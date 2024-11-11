import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/piont_on_card.dart';

class PlayersCard extends StatelessWidget {
  const PlayersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 330,
        ),
        Positioned(
          top: 45,
          left: 5,
          right: 25,
          bottom: 5,
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              color: const Color(0xff222232),
              borderRadius: BorderRadius.circular(62),
            ),
          ),
        ),
        const Positioned(
          top: 16,
          left: 26,
          child: PiontOnCard(
            width: 20,
            hight: 20,
          ),
        ),
        const Positioned(
          bottom: 6,
          left: 8,
          child: PiontOnCard(
            width: 20,
            hight: 20,
          ),
        ),
        const Positioned(
          bottom: 85,
          left: 236,
          child: PiontOnCard(
            color: Colors.lightBlue,
            width: 30,
            hight: 30,
          ),
        ),
        // Center the image with specific width and height
        Positioned(
          top: 0,
          bottom: .5,
          // left: ,
          right: -80,
          child: Center(
            child: Image.asset(
              'asstes/images/image.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
