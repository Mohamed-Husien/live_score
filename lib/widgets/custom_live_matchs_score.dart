import 'package:flutter/material.dart';

import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_score_board.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomLiveMatchsScore extends StatelessWidget {
  const CustomLiveMatchsScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ListTile(
            leading: Image.asset('asstes/images/flags/spain.png'),
            title: const CustomSemiBoldText(text: "La Liga", fontSize: 16),
            subtitle: const CustomRegulrText(text: 'Spain', fontSize: 12),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
                weight: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const CustomScoreBoard()
      ],
    );
  }
}
