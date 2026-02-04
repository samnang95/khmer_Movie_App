import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khmer_movie_app/app/core/app.dart';
import 'package:khmer_movie_app/app/core/theme/theme_controller.dart';
import 'package:khmer_movie_app/app/core/translations/language_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeController = ThemeController();
  final languageController = LanguageController();

  Get.put(themeController);
  Get.put(languageController);

  await Future.wait([
    themeController.loadTheme(),
    languageController.loadLocale(),
  ]);

  runApp(App());
}
