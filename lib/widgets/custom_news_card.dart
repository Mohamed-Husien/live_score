import 'package:flutter/material.dart';

class CustomNewsCard extends StatelessWidget {
  const CustomNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF246BFD), // Color #246BFD
            Color(0xFF0C0C69), // Color #0C0C69
          ],
        ),
      ),
      child: const Center(
        child: Text(
          'Linear Gradient Container',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
