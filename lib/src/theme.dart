import 'package:flutter/material.dart';

enum NavigationIndicators { sticky, end }

class AppTheme extends ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;
  ThemeMode get mode => _mode;

  TextDirection _textDirection = TextDirection.ltr;
  TextDirection get textDirection => _textDirection;

  Locale? _locale;
  Locale? get locale => _locale;

  set mode(ThemeMode mode) {
    _mode = mode;
    notifyListeners();
  }

  set textDirection(TextDirection direction) {
    _textDirection = direction;
    notifyListeners();
  }

  set locale(Locale? locale) {
    _locale = locale;
    notifyListeners();
  }
}
