import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences_key.dart';

class SharedPreferencesRepository {
  static final SharedPreferencesRepository _instance =
      SharedPreferencesRepository._internal();
   SharedPreferences? _prefs;

  factory SharedPreferencesRepository() {
    return _instance;
  }

  SharedPreferencesRepository._internal() {
    SharedPreferences.getInstance().then((value) {
      log("LocalManager._internal works");
      _prefs = value;
    });
  }

  static preferencesInit() async {
    if (_instance._prefs == null) {
      _instance._prefs = await SharedPreferences.getInstance();
      log("_preferences is OK.");
    } else {
      log("_preferences is ERROR !!");
    }
    return;
  }

  Future<bool> save<T>(SharedPreferencesKey key, T value) async {
    if (value is int) {
      return _prefs!.setInt(key.value, value);
    }
    if (value is double) {
      return _prefs!.setDouble(key.value, value);
    }
    if (value is bool) {
      return _prefs!.setBool(key.value, value);
    }
    if (value is String) {
      return _prefs!.setString(key.value, value);
    }
    if (value is List<String>) {
      return _prefs!.setStringList(key.value, value);
    }
    throw UnsupportedError('Not support \'$value\'');
  }

  T? fetch<T>(SharedPreferencesKey key) {
    if (T == int) {
      return _prefs!.getInt(key.value) as T?;
    }
    if (T == double) {
      return _prefs!.getDouble(key.value) as T?;
    }
    if (T == bool) {
      return _prefs!.getBool(key.value) as T?;
    }
    if (T == String) {
      return _prefs!.getString(key.value) as T?;
    }
    if (T == List<String>) {
      return _prefs!.getStringList(key.value) as T?;
    }
    throw UnsupportedError('Not support \'$T\'');
  }

  Future<bool> remove(SharedPreferencesKey key) => _prefs!.remove(key.value);
}
