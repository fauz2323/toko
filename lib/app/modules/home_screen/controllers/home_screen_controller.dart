import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  //TODO: Implement HomeScreenController
  var isLogin = false.obs;

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
    await Future.delayed(Duration(seconds: 2));
    isLogin.value = true;
  }
}
