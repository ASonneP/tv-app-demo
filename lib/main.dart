import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:meta/meta.dart';
import 'screens/shop_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/dummy_apps_screens.dart';
import 'screens/apps_screen.dart';
import 'app_state.dart';
import 'screens/home/main.dart';
import 'screens/notifications_screen.dart';
import 'screens/search_screen.dart';
import 'screens/user_profiles_screen.dart';
import 'screens/playback_controls.dart';

void main() {
  runApp(TVApp());
}

class TVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: Consumer<AppState>(
        builder: (context, appState, child) {
          return MaterialApp(
            title: '📺 TV App Demo',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            home: HomeScreen(),
            routes: {
              '/search': (context) => SearchScreen(),
              '/apps': (context) => AppsScreen(),
              '/shop': (context) => ShopScreen(),
              '/setting': (context) => SettingScreen(),
              '/profiles': (context) => UserProfilesScreen(),
              '/notifications': (context) => NotificationsScreen(),
              '/netflix': (context) => NetflixScreen(),
              '/disney': (context) => DisneyScreen(),
              '/appletv': (context) => AppleTVScreen(),
              '/hbomax': (context) => HBOMaxScreen(),
            },
            onGenerateRoute: (settings) {
              // Handle dynamic routes
              if (settings.name!.startsWith('/playbackcontrols/')) {
                final path = settings.name!.split('/').last;
                return MaterialPageRoute(
                  builder: (context) => PlaybackControls(path: path),
                );
              }
              // If no match is found, return null to fall back to default behavior.
              return null;
            },
          );
        },
      ),
    );
  }
}
