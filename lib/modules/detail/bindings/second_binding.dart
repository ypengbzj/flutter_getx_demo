import 'package:flutter_getx_demo/modules/detail/controllers/second_controller.dart';
import 'package:get/get.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondController>(() => SecondController());
  }
}