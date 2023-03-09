import 'package:flutter/material.dart';

import 'utill/shared_preferences/shared_preferences.dart';
import 'utill/shared_preferences/shared_preferences_key.dart';

class AppTheme extends ChangeNotifier {
  TextStyle normalTextStyle =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w300);
  TextStyle mediumTextStyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  TextStyle bigTextStyle =
      const TextStyle(fontSize: 26, fontWeight: FontWeight.w800);

  ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.standard,
    useMaterial3: true,
    textTheme: TextTheme(),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    )),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    ),
  );

  ThemeMode get mode => getTheme();
  SharedPreferencesRepository pref = SharedPreferencesRepository();

  set mode(ThemeMode mode) {
    pref.save<String>(SharedPreferencesKey.theme, mode.name);
    notifyListeners();
  }

  ThemeMode getTheme() {
    String? theme = pref.fetch<String>(SharedPreferencesKey.theme);
    if (theme != null) {
      return ThemeMode.values.firstWhere((element) => element.name == theme);
    } else {
      return ThemeMode.light;
    }
  }
}
