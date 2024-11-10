import 'package:flutter/material.dart';

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
      ],
    );
  }
}
