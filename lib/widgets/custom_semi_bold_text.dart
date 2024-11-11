import 'package:flutter/material.dart';

class CustomSemiBoldText extends StatelessWidget {
  const CustomSemiBoldText({
    super.key,
    required this.text,
    required this.fontSize,
  });
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
