import 'package:flutter/material.dart';

class NetflixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Netflix'),
      ),
      body: Center(
        child: Text('Netflix Screen'),
      ),
    );
  }
}

class DisneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disney+'),
      ),
      body: Center(
        child: Text('Disney+ Screen'),
      ),
    );
  }
}

class AppleTVScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple TV'),
      ),
      body: Center(
        child: Text('Apple TV Screen'),
      ),
    );
  }
}

class HBOMaxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HBO Max'),
      ),
      body: Center(
        child: Text('HBO Max Screen'),
      ),
    );
  }
}
