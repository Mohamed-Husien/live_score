import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';

class CustomNavigationBar2 extends StatefulWidget {
  const CustomNavigationBar2({super.key});

  @override
  State<CustomNavigationBar2> createState() => _CustomNavigationBar2State();
}

class _CustomNavigationBar2State extends State<CustomNavigationBar2> {
  final items = [
    const Icon(
      Icons.home,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.person,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.rate_review,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.chair_alt_rounded,
      size: 30,
      color: Colors.white,
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: items,
      index: index,
      onTap: (selectedIndex) {
        setState(
          () {
            index = selectedIndex;
          },
        );
      },
      height: 70,
      backgroundColor: kLightBalckColor,
      color: kPrimaryColor,
      animationDuration: const Duration(milliseconds: 300),
      // animationCurve: Curves.easeInCubic,
    );
  }
}
