import 'package:flutter_getx_demo/app/navigation/app_routes.dart';
import 'package:flutter_getx_demo/modules/Home/bindings/home_binding.dart';
import 'package:flutter_getx_demo/modules/Home/views/home_screen.dart';
import 'package:flutter_getx_demo/modules/detail/bindings/second_binding.dart';
import 'package:flutter_getx_demo/modules/detail/views/second_screen.dart';
import 'package:flutter_getx_demo/modules/request/bindings/request_binding.dart';
import 'package:flutter_getx_demo/modules/request/views/request_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = AppRoutes.root;

  static final routes = [
    GetPage(
      name: AppRoutes.root, 
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '${AppRoutes.second}/:count', 
      page: () => const SecondScreen(),
      binding: SecondBinding(),
    ),
    GetPage(
      name: AppRoutes.request, 
      page: () =>  RequestScreen(),
      binding: RequestBinding(),
    )
  ];
}