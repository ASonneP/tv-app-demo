import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            SizedBox(height: 20),
            FilterChips(),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: dummyData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(
                      dummyData[index]['image']!,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.broken_image);
                      },
                    ),
                    title: Text(dummyData[index]['title']!),
                    subtitle: Text(dummyData[index]['description']!),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle navigation or other actions
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class FilterChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      children: [
        Chip(label: Text('Movies')),
        Chip(label: Text('TV Shows')),
        Chip(label: Text('Music')),
        Chip(label: Text('Podcasts')),
        Chip(label: Text('Books')),
      ],
    );
  }
}

final List<Map<String, String>> dummyData = [
  {
    'image': 'https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
    'title': 'The Shawshank Redemption',
    'description':
        'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
  },
  {
    'image': 'https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg',
    'title': 'The Godfather',
    'description':
        'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
  },
  {
    'image': 'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
    'title': 'The Dark Knight',
    'description':
        'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.',
  },
  {
    'image': 'https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg',
    'title': 'Pulp Fiction',
    'description':
        'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
  },
  {
    'image': 'https://image.tmdb.org/t/p/w500/8kNruSfhk5IoE4eZOc4UpvDn6tq.jpg',
    'title': 'Fight Club',
    'description':
        'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.',
  },
  {
    'image': 'https://image.tmdb.org/t/p/w500/saHP97rTPS5eLmrLQEcANmKrsFl.jpg',
    'title': 'Forrest Gump',
    'description':
        'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.',
  },
];
