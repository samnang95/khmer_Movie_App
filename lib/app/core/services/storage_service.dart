import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const _themeKey = "isDarkMode";
  static const _localeKey = "locale";

  static Future<void> saveTheme(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, value);
  }

  static Future<bool> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_themeKey) ?? false;
  }

  static Future<void> saveLocale(String locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale);
  }

  static Future<Locale> loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final val = prefs.getString(_localeKey) ?? 'en_US';
    final parts = val.split('_');
    return Locale(parts[0], parts.length > 1 ? parts[1] : 'US');
  }
}
