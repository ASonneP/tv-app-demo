import 'package:flutter/material.dart';
import '../data/apps_data.dart';

class AppsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TV Apps'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: apps.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (ctx, index) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(apps[index]['route']!);
              },
              child: Image.asset(
                apps[index]['image']!,
                fit: BoxFit.cover,
              ),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(
                apps[index]['name']!,
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
