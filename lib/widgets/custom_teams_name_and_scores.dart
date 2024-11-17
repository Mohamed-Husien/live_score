import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomTeamsNameAndScores extends StatelessWidget {
  const CustomTeamsNameAndScores({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16, right: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              CustomSemiBoldText(text: 'Barcelona', fontSize: 16),
              CustomSemiBoldText(text: '4', fontSize: 16),
            ],
          ),
          SizedBox(
            width: 4,
          ),
          Column(
            children: [
              CustomSemiBoldText(text: 'VS', fontSize: 16),
              CustomSemiBoldText(text: '-', fontSize: 16),
            ],
          ),
          SizedBox(
            width: 4,
          ),
          Column(
            children: [
              CustomSemiBoldText(text: 'Real Madrid', fontSize: 16),
              CustomSemiBoldText(text: '0', fontSize: 16),
            ],
          ),
        ],
      ),
    );
  }
}
