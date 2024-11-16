import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/home_view_widgets/custom_navigation_bar_2.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  @override
  Widget build(BuildContext context) {
    return const Scaffold(bottomNavigationBar: CustomNavigationBar2());
  }
}
