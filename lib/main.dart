import 'package:flutter/material.dart';
import 'package:live_score_app/views/fav_sport_view.dart';
import 'package:live_score_app/views/first_view.dart';
import 'package:live_score_app/views/views_on_navigation_bar/home_view.dart';

void main() {
  runApp(const LiveScore());
}

class LiveScore extends StatelessWidget {
  const LiveScore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Source', // Set default font family
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w400, // Regular
          ),
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w600, // SemiBold
          ),
        ),
        primaryColor: const Color(0xFF181829),
        scaffoldBackgroundColor:
            const Color(0xFF181829), // Change background color
      ),
      routes: {
        FavouriteSportView.id: (context) => const FavouriteSportView(),
        FirstView.id: (context) => const FirstView(),
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: FirstView.id,
    );
  }
}
