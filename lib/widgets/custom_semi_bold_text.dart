import 'package:flutter/material.dart';

class CustomSemiBoldText extends StatelessWidget {
  const CustomSemiBoldText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color = Colors.white,
  });
  final String text;
  final double fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
