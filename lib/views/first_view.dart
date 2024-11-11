import 'package:flutter/material.dart';
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
          top: 64,
        ),
        child: Column(
          children: [
            PlayersCard(),
          ],
        ),
      )),
    );
  }
}
