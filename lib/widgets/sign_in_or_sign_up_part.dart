import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_sign_in_button.dart';

class SignInOrSignUpBotton extends StatelessWidget {
  const SignInOrSignUpBotton({
    super.key,
    required this.onSignINTap,
    this.onSingUpPressed,
  });
  final void Function() onSignINTap;
  final void Function()? onSingUpPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(onTap: onSignINTap),
        const SizedBox(
          width: 16,
        ),
        TextButton(
          onPressed: onSingUpPressed,
          child: const CustomRegulrText(text: 'Sign Up', fontSize: 18),
        ),
      ],
    );
  }
}
