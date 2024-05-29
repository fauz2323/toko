import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
  });

  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
