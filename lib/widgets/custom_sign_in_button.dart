import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomSignInButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomSignInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(32),
      splashColor: Colors.white.withOpacity(0.2),
      highlightColor: Colors.transparent,
      child: Container(
        height: 64,
        width: 180,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(32),
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
