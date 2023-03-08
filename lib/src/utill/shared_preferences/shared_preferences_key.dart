enum SharedPreferencesKey {
  language,
  theme,
}


extension SharedPreferencesKeyExtension on SharedPreferencesKey {
  String get value => name;
}
