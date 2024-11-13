import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.fontSize = 16,
    this.color = kPrimaryColor,
  });
  final void Function()? onPressed;
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: CustomRegulrText(
        color: color,
        fontSize: fontSize,
        text: text,
      ),
    );
  }
}
