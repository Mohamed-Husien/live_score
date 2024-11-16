import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomAppbar(
              title: 'LiveScore',
              icon: Icons.search,
              icon2: Icons.notifications_on_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
