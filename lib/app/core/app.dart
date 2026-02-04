import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khmer_movie_app/app/core/theme/app_theme.dart';
import 'package:khmer_movie_app/app/core/theme/theme_controller.dart';
import 'package:khmer_movie_app/app/core/translations/app_translations.dart';
import 'package:khmer_movie_app/app/core/translations/language_controller.dart';
import 'package:khmer_movie_app/app/routes/app_pages.dart';
import 'package:khmer_movie_app/app/routes/app_routes.dart';

class App extends StatelessWidget {
  final ThemeController themeController = Get.find();
  final LanguageController languageController = Get.find();
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: "Movie App",
        debugShowCheckedModeBanner: false,
        translations: AppTranslation(),
        locale: languageController.currentLocale.value,
        theme: themeController.isDarkMode.value
            ? AppTheme.darkTheme
            : AppTheme.lightTheme,
        initialRoute: AppRoutes.home,
        getPages: AppPages.routes,
      ),
    );
  }
}
