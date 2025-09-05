import 'package:get/get.dart';

class SecondController extends GetxController {
  int count = 0;
  @override
  void onInit() {
    super.onInit();
    final String? countParam = Get.parameters['count'];
    final int? passedCount = countParam != null ? int.tryParse(countParam) : null;
    if (passedCount != null) {
      count = passedCount;
    }
  }
}