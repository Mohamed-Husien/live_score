import 'package:flutter/material.dart';
import 'package:live_score_app/views/first_view.dart';

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
        primaryColor: const Color(0xFF181829),
        scaffoldBackgroundColor:
            const Color(0xFF181829), // Change background color
      ),
      home: const FirstView(),
    );
  }
}
