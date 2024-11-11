import 'package:flutter/material.dart';

class CustomRegulrText extends StatelessWidget {
  const CustomRegulrText(
      {super.key, required this.text, required this.fontSize});
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
