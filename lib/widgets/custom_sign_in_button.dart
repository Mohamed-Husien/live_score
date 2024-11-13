import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final double width;
  final String text;
  const CustomButton(
      {super.key,
      required this.onTap,
      this.width = 180,
      this.text = "Sign In"});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      splashColor: kPrimaryColor,
      highlightColor: Colors.transparent,
      child: Container(
        height: 64,
        width: width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: CustomSemiBoldText(
            text: text,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
