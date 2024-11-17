import 'package:flutter/material.dart';

class TeamsLogo extends StatelessWidget {
  const TeamsLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: const BoxDecoration(
            color: Color(0xff222232),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              'asstes/images/flags/image (8).png',
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: 0.4,
          right: -48,
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              color: Color(0xff222232),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                'asstes/images/flags/image (9).png',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
