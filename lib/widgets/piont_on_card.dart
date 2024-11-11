import 'package:flutter/material.dart';

class PiontOnCard extends StatelessWidget {
  const PiontOnCard(
      {super.key,
      this.color = Colors.white,
      required this.width,
      required this.hight});
  final Color color;
  final double width, hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
