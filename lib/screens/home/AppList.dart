import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/apps_data.dart';

class AppList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Filter the apps list to include only those with 'favor' set to 'true'
    final List<Map<String, String>> favoriteApps =
        apps.where((app) => app['favor'] == 'true').toList();

    return Container(
      margin: EdgeInsets.only(left: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your apps',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 8.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favoriteApps.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, favoriteApps[index]['route']!);
                  },
                  child: Container(
                    width: 80,
                    margin: EdgeInsets.only(right: 8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: SvgPicture.asset(
                            favoriteApps[index]['icon']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(favoriteApps[index]['name']!,
                            style: TextStyle(fontSize: 14)),
                      ],
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
