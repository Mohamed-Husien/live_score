import 'package:flutter/material.dart';

class CustomRegulrText extends StatelessWidget {
  const CustomRegulrText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.color = Colors.grey});
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
