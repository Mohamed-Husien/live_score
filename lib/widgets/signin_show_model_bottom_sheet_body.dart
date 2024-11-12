import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';
import 'package:live_score_app/widgets/custom_text_form_field.dart';

class SignInShowModelBottomSheetBody extends StatefulWidget {
  const SignInShowModelBottomSheetBody({super.key});

  @override
  State<SignInShowModelBottomSheetBody> createState() =>
      _SignInShowModelBottomSheetBodyState();
}

class _SignInShowModelBottomSheetBodyState
    extends State<SignInShowModelBottomSheetBody> {
  bool isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: ListView(
        children: [
          const CustomSemiBoldText(text: "Welcome", fontSize: 28),
          const SizedBox(
            height: 24,
          ),
          const CustomTextFormField(
            hint: 'Email',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            obscureText: isSecurePassword,
            suffixIcon: toggalePassword(),
            hint: 'Password',
          ),
        ],
      ),
    );
  }

  Widget toggalePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            isSecurePassword = !isSecurePassword;
          });
        },
        icon: isSecurePassword
            ? const Icon(Icons.visibility)
            : const Icon(
                Icons.visibility_off,
                color: Colors.grey,
              ));
  }
}
