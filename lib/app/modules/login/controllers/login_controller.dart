import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  login() async {
    Get.offAllNamed('/home');
  }
}
