import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomSelecteFavSport extends StatelessWidget {
  const CustomSelecteFavSport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: kLightBalckColor,
            borderRadius: BorderRadius.circular(64),
          ),
          child: Center(
            child: Image.asset(
              'asstes/images/balls/2.png',
              width: 80,
              height: 80,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomSemiBoldText(
          text: 'Football',
          fontSize: 18,
        )
      ],
    );
  }
}
