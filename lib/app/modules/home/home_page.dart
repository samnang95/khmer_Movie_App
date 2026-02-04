import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khmer_movie_app/app/core/theme/theme_controller.dart';
import 'package:khmer_movie_app/app/core/translations/language_controller.dart';
import 'package:khmer_movie_app/app/core/values/text_style.dart';
import 'package:khmer_movie_app/app/modules/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final languageController = Get.find<LanguageController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello GetX", style: AppTextStyles.large),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Get.find<ThemeController>().toggleTheme();
            },
            icon: Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("hello".tr, style: AppTextStyles.extraLarge),
            Obx(
              () =>
                  Text("${controller.count}", style: AppTextStyles.extraLarge),
            ),
            ElevatedButton(
              onPressed: () {
                final newLocale =
                    languageController.currentLocale.value.languageCode == 'en'
                    ? Locale('km', 'KH')
                    : Locale('en', 'US');
                languageController.changeLocale(newLocale);
              },
              child: Text("change_language".tr),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
