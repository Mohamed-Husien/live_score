import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_sign_in_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Explore",
        ),
        CustomButton(onTap: () {})
      ],
    );
  }
}
