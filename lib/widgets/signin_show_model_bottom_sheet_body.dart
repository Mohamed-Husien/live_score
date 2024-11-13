import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/helpers/validate_email.dart';
import 'package:live_score_app/helpers/validate_password.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';
import 'package:live_score_app/widgets/custom_sign_in_button.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? password, email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 24,
        left: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomSemiBoldText(text: "Welcome", fontSize: 28),
            const SizedBox(height: 24),
            CustomTextFormField(
              onChanged: (value) {
                email = value;
              },
              validator: (value) => validateEmail(value),
              hint: 'Email',
              prefixIcon: const Icon(
                Icons.email,
                color: Color(0xff65656B),
              ),
            ),
            const SizedBox(height: 24),
            //---------------------------------------------
            CustomTextFormField(
              onChanged: (value) {
                password = value;
              },
              validator: (value) => validatePassword2(value),
              obscureText: isSecurePassword,
              suffixIcon: toggalePassword(),
              hint: 'Password',
              prefixIcon: const Icon(
                Icons.key,
                color: Color(0xff65656B),
              ),
            ),
            //--------------------------------------------
            const SizedBox(height: 24),
            CustomButton(
              width: double.infinity,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
            //-------------------------------------------------
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomRegulrText(
                  color: Color(0xffC4C4C4),
                  fontSize: 14,
                  text: "Don't have an account?",
                ),
                TextButton(
                  onPressed: () {},
                  child: const CustomRegulrText(
                    color: kPrimaryColor,
                    fontSize: 16,
                    text: "Sign Up",
                  ),
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ],
        ),
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
            ),
    );
  }
}
