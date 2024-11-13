import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/models/favorite_sport_model.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomSelecteFavSport extends StatelessWidget {
  const CustomSelecteFavSport({super.key, required this.sportModel});
  final FavoriteSportModel sportModel;
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
              sportModel.image,
              width: 80,
              height: 80,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomSemiBoldText(
          text: sportModel.text,
          fontSize: 18,
        ),
      ],
    );
  }
}
