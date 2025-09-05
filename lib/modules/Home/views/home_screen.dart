import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/app/navigation/app_routes.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_demo/modules/Home/controllers/home_controller.dart';

class HomeScreen extends GetView<Homecontroller> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 使用Obx(()=>每当改变计数时，就更新Text()。
      appBar: AppBar(title: Obx(() => Text('Clicks: ${controller.count}'))),
      body: Center(
        child: ElevatedButton(
          // 用一个简单的Get.to()即可代替Navigator.push那8行，无需上下文！
          onPressed: () => {
            Get.toNamed('${AppRoutes.second}/${controller.count.value}')
          }, 
          child: const Text('Go to Other'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}