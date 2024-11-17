import 'package:flutter/material.dart';

class TeamsLogo extends StatelessWidget {
  const TeamsLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            color: Color(0xff222232),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              'asstes/images/flags/image (8).png',
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: 0.4,
          right: -30,
          child: Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              color: Color(0xff222232),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                'asstes/images/flags/image (9).png',
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
