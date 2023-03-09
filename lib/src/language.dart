import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'utill/shared_preferences/shared_preferences.dart';
import 'utill/shared_preferences/shared_preferences_key.dart';

class AppLanguage extends ChangeNotifier {
  SharedPreferencesRepository pref = SharedPreferencesRepository();
  Locale get locale => getFromLocalStorage();
  final List<Locale> locales = [Locale("tr"), Locale("en")];

  setLocale(BuildContext context, Locale locale) async {
    await context.setLocale(locale);
    await pref.save<String>(SharedPreferencesKey.language, locale.languageCode);
    notifyListeners();
  }

  Locale getFromLocalStorage() {
    String? languageCode = pref.fetch<String>(SharedPreferencesKey.language);
    if (languageCode != null) {
      return Locale(languageCode);
    } else {
      return locales.first;
    }
  }
}
