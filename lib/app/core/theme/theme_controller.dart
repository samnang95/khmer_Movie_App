import 'package:get/get.dart';
import 'package:khmer_movie_app/app/core/services/storage_service.dart';
import 'package:khmer_movie_app/app/core/theme/app_theme.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;

  Future<void> toggleTheme() async {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(
      isDarkMode.value ? AppTheme.darkTheme : AppTheme.lightTheme,
    );
    await StorageService.saveTheme(isDarkMode.value);
  }

  Future<void> loadTheme() async {
    isDarkMode.value = await StorageService.loadTheme();
    Get.changeTheme(
      isDarkMode.value ? AppTheme.darkTheme : AppTheme.lightTheme,
    );
  }
}
