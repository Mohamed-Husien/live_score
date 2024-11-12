import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomSignInButton extends StatelessWidget {
  final VoidCallback onTap;
  final double width;
  const CustomSignInButton({super.key, required this.onTap, this.width = 180});

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
        child: const Center(
          child: CustomSemiBoldText(
            text: "Sign In",
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
