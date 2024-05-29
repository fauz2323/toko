import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko/app/modules/home_screen/views/home_screen_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final currentIndex = 0.obs;
  final pages = <Widget>[
    HomeScreenView(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
  ].obs;

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

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
