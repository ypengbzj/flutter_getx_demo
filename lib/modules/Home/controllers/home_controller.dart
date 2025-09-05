import 'package:get/get.dart';

class Homecontroller extends GetxController {
  // 你可以使用一个简单的".obs "使任何变量成为可观察的
  var count = 0.obs;
  increment() => count++;
}