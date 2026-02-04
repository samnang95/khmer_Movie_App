import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:khmer_movie_app/app/modules/home/home_binding.dart';
import 'package:khmer_movie_app/app/modules/home/home_page.dart';
import 'package:khmer_movie_app/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
