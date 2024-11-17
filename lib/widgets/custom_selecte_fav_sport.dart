import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/models/favorite_sport_model.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomSelecteFavSport extends StatelessWidget {
  const CustomSelecteFavSport(
      {super.key,
      required this.sportModel,
      this.color = kLightBalckColor,
      this.onTap});
  final FavoriteSportModel sportModel;
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ensures Column takes minimal space
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Center(
                child: Image.asset(
                  sportModel.image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomSemiBoldText(
            text: sportModel.text,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
