import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_state.dart';

class UserProfilesScreen extends StatelessWidget {
  final List<String> profiles = ['User 1', 'User 2'];

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('User Profiles'),
      ),
      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(profiles[index]),
            onTap: () {
              // appState.selectProfile(index);
            },
          );
        },
      ),
    );
  }
}
