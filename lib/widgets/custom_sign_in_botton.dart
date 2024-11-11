import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';

class CustomSignInBotton extends StatelessWidget {
  const CustomSignInBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 200,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
    );
  }
}
