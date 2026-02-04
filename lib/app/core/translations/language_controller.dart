import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khmer_movie_app/app/core/services/storage_service.dart';

class LanguageController extends GetxController {
  Rx<Locale> currentLocale = Locale('en', 'US').obs;

  Future<void> changeLocale(Locale locale) async {
    currentLocale.value = locale;
    Get.updateLocale(locale);
    await StorageService.saveLocale(
      '${locale.languageCode}_${locale.countryCode}',
    );
  }

  Future<void> loadLocale() async {
    final stored = await StorageService.loadLocale();
    currentLocale.value = stored;
    Get.updateLocale(stored);
  }
}
