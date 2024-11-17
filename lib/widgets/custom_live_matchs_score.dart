import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';
import 'package:live_score_app/widgets/custom_teams_logo.dart';

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
        const CustomScoreBord()
      ],
    );
  }
}

class CustomScoreBord extends StatelessWidget {
  const CustomScoreBord({
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
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          TeamsLogo(),
        ]),
      ),
    );
  }
}
