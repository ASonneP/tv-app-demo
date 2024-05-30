import 'package:flutter/material.dart';

class PlaybackControls extends StatelessWidget {
  final String path;

  PlaybackControls({required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playback Controls for $path'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.replay_10),
              onPressed: () {
                // Implement rewind functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                // Implement play functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.pause),
              onPressed: () {
                // Implement pause functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.forward_10),
              onPressed: () {
                // Implement fast-forward functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
