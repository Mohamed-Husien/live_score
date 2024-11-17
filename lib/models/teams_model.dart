import 'package:flutter/material.dart';

class TeamsModel {
  final String team1Name;
  final String team2Name;
  final Image team1Image;
  final Image team2Image;
  final int team1Score;
  final int team2Score;
  final String timeState;

  TeamsModel(
      {required this.team1Name,
      required this.team2Name,
      required this.team1Image,
      required this.team2Image,
      required this.team1Score,
      required this.team2Score,
      required this.timeState});
}
