import 'package:get/get.dart';

import '../../../service/token_service.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  var token;
  @override
  void onInit() {
    super.onInit();
    initial();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  initial() async {
    await Future.delayed(Duration(seconds: 3));
    token = await TokenHelper().getToken();
    if (token == '-') {
      Get.offNamed('/login');
    } else {
      Get.offNamed('/home');
    }
  }
}
