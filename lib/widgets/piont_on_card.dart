import 'package:flutter/material.dart';

class PiontOnCard extends StatelessWidget {
  const PiontOnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.56,
      height: 16.09,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Text("."),
    );
  }
}
