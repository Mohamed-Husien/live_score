import 'package:flutter/material.dart';

import 'package:live_score_app/widgets/home_view_widgets/custom_navigation_bottom_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomNavigationBottomBar(
      selectedIndex: selectedIndex,
    ));
  }
}
