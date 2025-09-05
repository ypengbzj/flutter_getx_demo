import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/app/navigation/app_pages.dart';
import 'package:flutter_getx_demo/app/navigation/app_routes.dart';
import 'package:get/get.dart';

void main() {
  // 在你的MaterialApp前添加 "Get"，将其变成GetMaterialApp
  runApp(
    GetMaterialApp(
      initialRoute: AppRoutes.root,
      getPages: AppPages.routes,
    )
  );
}