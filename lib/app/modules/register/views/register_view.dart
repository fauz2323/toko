import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:toko/app/service/size_service.dart';
import 'package:toko/app/widget/form_widget.dart';

import '../../../widget/button_widget.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Logo"),
                SizedBox(
                  height: height(context) * 5 / 100,
                ),
                Text(
                  "Register",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                Text("Please register to continue"),
                SizedBox(
                  height: 35,
                ),
                FormWidget(
                  hintText: 'Name',
                  icon: Icons.person,
                  obsecureText: false,
                  controller: controller.nameController,
                ),
                SizedBox(
                  height: 20,
                ),
                FormWidget(
                  hintText: 'Email',
                  icon: Icons.email,
                  obsecureText: false,
                  controller: controller.emailController,
                ),
                SizedBox(
                  height: 20,
                ),
                FormWidget(
                  hintText: 'Phone',
                  icon: Icons.phone,
                  obsecureText: false,
                  controller: controller.phoneController,
                ),
                SizedBox(
                  height: 20,
                ),
                FormWidget(
                  hintText: 'Password',
                  icon: Icons.lock,
                  obsecureText: true,
                  controller: controller.passwordController,
                ),
                SizedBox(
                  height: 20,
                ),
                FormWidget(
                  hintText: 'Confirm Password',
                  icon: Icons.lock,
                  obsecureText: true,
                  controller: controller.confirmPasswordController,
                ),
                SizedBox(
                  height: height(context) * 5 / 100,
                ),
                ButtonWidget(
                  text: 'Register',
                  onPressed: () {},
                  height: 50,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
