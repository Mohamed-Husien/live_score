import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/sign_in_or_sign_up_part.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';
import 'package:live_score_app/widgets/players_card.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            right: 32,
            left: 32,
            top: 32,
          ),
          child: Column(
            children: [
              PlayersCard(),
              SizedBox(
                height: 32,
              ),
              CustomSemiBoldText(
                text: 'Dicover all about sport',
                fontSize: 40,
              ),
              SizedBox(
                height: 4,
              ),
              CustomRegulrText(
                text:
                    'Stay ahead of the game—live scores, instant updates, and all the action, right at your fingertips!',
                fontSize: 16,
              ),
              SizedBox(
                height: 32,
              ),
              SignInOrSignUpBotton(),
            ],
          ),
        ),
      ),
    );
  }
}
