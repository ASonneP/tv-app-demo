import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tv_app/main.dart';
import 'package:tv_app/screens/home/AppList.dart';
import 'package:tv_app/screens/home/ContinueWatching.dart';
import 'package:tv_app/screens/home/FeaturedContent.dart';
import 'package:tv_app/screens/home/TopNavBar.dart';
import 'package:tv_app/screens/home/TopPicksSlider.dart';
import 'package:tv_app/screens/home/main.dart';
import 'package:mockito/mockito.dart';

class MockHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return MockHttpClient();
  }
}

class MockHttpClient extends Mock implements HttpClient {}

void main() {
  setUpAll(() {
    HttpOverrides.global = MockHttpOverrides();
  });

  testWidgets('AppList displays favorite apps', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: AppList()));

    // Check if the 'Your apps' title is displayed
    expect(find.text('Your apps'), findsOneWidget);

    // Check if list items are displayed (assuming favoriteApps is not empty)
    expect(find.byType(SvgPicture), findsWidgets); // Check for icons
  });

  testWidgets('TopNavBar displays correctly', (WidgetTester tester) async {
    // Build the TopNavBar widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: TopNavBar(),
          ),
        ),
      ),
    );

    // Verify if IconButton widgets are found
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.notifications), findsOneWidget);
    expect(find.byIcon(Icons.settings), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);

    // Verify if Text widgets with correct text are found
    expect(find.text('Main'), findsOneWidget);
    expect(find.text('Shop'), findsOneWidget);
    expect(find.text('Apps'), findsOneWidget);

    // Verify if TimeDisplay widget is found
    expect(find.byType(TimeDisplay), findsOneWidget);
  });
}
