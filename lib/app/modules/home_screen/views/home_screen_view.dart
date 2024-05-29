import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:toko/app/service/size_service.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hello, User!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.logout, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: width(context) * 90 / 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A Special Offer for You",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                      Text(
                        "Cashback 20% for all products",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Special Menu",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuWidget(),
                    MenuWidget(),
                    MenuWidget(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context) * 25 / 100,
      height: width(context) * 35 / 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.fastfood,
            color: Colors.blue,
            size: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Random Food",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
