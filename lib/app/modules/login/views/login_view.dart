import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:toko/app/service/size_service.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/form_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                  height: height(context) * 15 / 100,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                Text("Please login to continue"),
                SizedBox(
                  height: height(context) * 5 / 100,
                ),
                FormWidget(
                  hintText: 'Email',
                  icon: Icons.email,
                  obsecureText: false,
                  controller: controller.emailController,
                ),
                SizedBox(
                  height: height(context) * 4 / 100,
                ),
                FormWidget(
                  hintText: 'Password',
                  icon: Icons.lock,
                  obsecureText: true,
                  controller: controller.passwordController,
                ),
                SizedBox(
                  height: height(context) * 5 / 100,
                ),
                ButtonWidget(
                  text: 'Login',
                  onPressed: () {
                    controller.login();
                  },
                  height: 50,
                  width: double.infinity,
                ),
                SizedBox(
                  height: height(context) * 20 / 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? '),
                    TextButton(
                      onPressed: () {
                        Get.toNamed('/register');
                      },
                      child: Text('Sign Up'),
                    ),
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
