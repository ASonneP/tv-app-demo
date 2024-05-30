import 'package:flutter/material.dart';

class ContinueWatching extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'Movie 1',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'Movie 2',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'Movie 3',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'Movie 4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Continue Watching',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(items[index]['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      items[index]['title']!,
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
