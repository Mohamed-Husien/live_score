import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';
import 'package:live_score_app/widgets/custom_teams_logo.dart';
import 'package:live_score_app/widgets/custom_teams_name_and_scores.dart';

class CustomScoreBoard extends StatelessWidget {
  const CustomScoreBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xff2B2B3D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 6),
        child: Row(
          children: [
            const TeamsLogo(),
            const SizedBox(
              width: 42,
            ),
            const CustomTeamsNameAndScores(),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                child: Container(
                  color: const Color(0xff222232),
                  child: const Center(
                    child: CustomSemiBoldText(text: 'HT', fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
