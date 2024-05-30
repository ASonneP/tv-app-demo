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
    'image': 'https://via.placeholder.com/150',
    'title': 'Item 1',
    'description': 'Description for item 1',
  },
  {
    'image': 'https://via.placeholder.com/150',
    'title': 'Item 2',
    'description': 'Description for item 2',
  },
  {
    'image': 'https://via.placeholder.com/150',
    'title': 'Item 3',
    'description': 'Description for item 3',
  },
  {
    'image': 'https://via.placeholder.com/150',
    'title': 'Item 4',
    'description': 'Description for item 4',
  },
  {
    'image': 'https://via.placeholder.com/150',
    'title': 'Item 5',
    'description': 'Description for item 5',
  },
  {
    'image': 'https://via.placeholder.com/150',
    'title': 'Item 6',
    'description': 'Description for item 6',
  },
];
