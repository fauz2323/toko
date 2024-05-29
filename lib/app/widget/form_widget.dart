import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
    required this.hintText,
    required this.icon,
    required this.obsecureText,
    required this.controller,
  });
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: hintText,
        filled: true,
        fillColor: Color.fromRGBO(216, 238, 255, 1).withOpacity(0.7),
        icon: Icon(
          icon,
          color: Colors.blue,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color.fromRGBO(216, 238, 255, 1).withOpacity(0.7),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
