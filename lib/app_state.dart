import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  // Define the state variables and methods here

  // Example: a list of favorite content
  List<String> _favorites = [];
  List<String> get favorites => _favorites;

  void addFavorite(String content) {
    _favorites.add(content);
    notifyListeners();
  }

  void removeFavorite(String content) {
    _favorites.remove(content);
    notifyListeners();
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
