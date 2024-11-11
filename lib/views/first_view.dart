import 'package:flutter/material.dart';
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
              Text(
                "Stay ahead of the game—live scores, instant updates, and all the action, right at your fingertips!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
