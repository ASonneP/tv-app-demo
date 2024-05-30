# Use the official CirrusLabs Flutter image
FROM ghcr.io/cirruslabs/flutter:stable

# Create a new non-root user
RUN useradd -ms /bin/bash nonrootuser

# Set environment variables
ENV PUB_CACHE=/home/nonrootuser/.pub-cache

# Set working directory
WORKDIR /app

# Copy the pubspec files and get dependencies
COPY pubspec.* ./
RUN flutter pub get

# Copy the rest of the application code
COPY . .

# Add Flutter directory to safe directories before switching user
RUN git config --global --add safe.directory /sdks/flutter

# Ensure the non-root user owns the application files and the pub cache
RUN chown -R nonrootuser:nonrootuser /app /home/nonrootuser/.pub-cache /sdks/flutter

# Switch to the non-root user
USER nonrootuser

# Run the Flutter config as the non-root user
RUN flutter config --enable-web

# Add Flutter directory to safe directories as the non-root user
RUN git config --global --add safe.directory /sdks/flutter

# Build the Flutter web application
RUN flutter build web

# Use nginx to serve the web application
FROM nginx:alpine
COPY --from=0 /app/build/web /usr/share/nginx/html
