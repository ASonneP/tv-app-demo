import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          AccountSettingsSection(),
          Divider(),
          NotificationSettingsSection(),
          Divider(),
          ThemeSettingsSection(),
        ],
      ),
    );
  }
}

class AccountSettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account Settings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
          onTap: () {
            // Navigate to Profile settings
          },
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text('Change Password'),
          onTap: () {
            // Navigate to Change Password settings
          },
        ),
      ],
    );
  }
}

class NotificationSettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notification Settings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SwitchListTile(
          title: Text('Receive Notifications'),
          value: true,
          onChanged: (bool value) {
            // Handle notification switch
          },
          secondary: Icon(Icons.notifications),
        ),
        SwitchListTile(
          title: Text('Receive Newsletter'),
          value: false,
          onChanged: (bool value) {
            // Handle newsletter switch
          },
          secondary: Icon(Icons.email),
        ),
      ],
    );
  }
}

class ThemeSettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Theme Settings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ListTile(
          leading: Icon(Icons.brightness_6),
          title: Text('Light Theme'),
          trailing: Radio(
            value: ThemeMode.light,
            groupValue: ThemeMode.light,
            onChanged: (ThemeMode? value) {
              // Handle theme change
            },
          ),
        ),
        ListTile(
          leading: Icon(Icons.brightness_3),
          title: Text('Dark Theme'),
          trailing: Radio(
            value: ThemeMode.dark,
            groupValue: ThemeMode.light,
            onChanged: (ThemeMode? value) {
              // Handle theme change
            },
          ),
        ),
        ListTile(
          leading: Icon(Icons.brightness_auto),
          title: Text('System Default'),
          trailing: Radio(
            value: ThemeMode.system,
            groupValue: ThemeMode.light,
            onChanged: (ThemeMode? value) {
              // Handle theme change
            },
          ),
        ),
      ],
    );
  }
}
