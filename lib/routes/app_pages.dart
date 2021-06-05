import 'package:flutter_carousel_example/views/home/home_binding.dart';
import 'package:flutter_carousel_example/views/home/home_screen.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
