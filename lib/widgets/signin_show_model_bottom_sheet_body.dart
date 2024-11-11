import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';
import 'package:live_score_app/widgets/custom_text_form_field.dart';

class SignInShowModelBottomSheetBody extends StatelessWidget {
  const SignInShowModelBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: ListView(
        children: const [
          CustomSemiBoldText(text: "Welcome", fontSize: 28),
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hint: 'Email',
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(hint: 'Password'),
        ],
      ),
    );
  }
}
