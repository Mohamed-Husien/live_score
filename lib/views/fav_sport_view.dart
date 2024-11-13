import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class FavouriteSportView extends StatelessWidget {
  const FavouriteSportView({super.key});
  static String id = 'favSportView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 90,
          right: 28,
          left: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSemiBoldText(
              text: 'What sport do you interest?',
              fontSize: 36,
            ),
            SizedBox(
              height: 14,
            ),
            CustomRegulrText(
              text: 'You can choose more than one.',
              fontSize: 16,
            )
          ],
        ),
      ),
    );
  }
}
