import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/piont_on_card.dart';

class PlayersCard extends StatelessWidget {
  const PlayersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 330,
          color: const Color(0xff222232),
        ),
        Positioned(
          top: 60,
          left: 30,
          right: 30,
          bottom: 60,
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
        const Positioned(
          top: 16,
          left: 26,
          child: PiontOnCard(),
        ),
      ],
    );
  }
}
