import 'package:flutter/material.dart';

class LeagueModel {
  final Image leagueFlag;
  final String leagueTitle;
  final String countryName;
  final IconButton icon;

  LeagueModel(
      {required this.leagueFlag,
      required this.leagueTitle,
      required this.countryName,
      required this.icon});
}
