import 'package:flutter/material.dart';
import '../../data/top_picks_data.dart';
import 'TopNavBar.dart';
import 'FeaturedContent.dart';
import 'TopPicksSlider.dart';
import 'ContinueWatching.dart';
import 'AppList.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopNavBar(),
          Expanded(
            child: ListView(
              children: [
                FeaturedContent(),
                TopPicksSlider(
                  title: 'Top picks for you',
                  items: topPicksItems, // Use the imported list
                ),
                ContinueWatching(),
                AppList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
