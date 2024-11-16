import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/helpers/get_selected_widget_fun.dart';

class ParentView extends StatefulWidget {
  const ParentView({super.key});
  static String id = 'HomeView';

  @override
  State<ParentView> createState() => _ParentViewState();
}

class _ParentViewState extends State<ParentView> {
  final items = [
    const Icon(
      Icons.home,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.explore,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.score_outlined,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.person,
      size: 30,
      color: Colors.white,
    ),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
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
      ),
      body: getSelectedWidget(index: index),
    );
  }
}
