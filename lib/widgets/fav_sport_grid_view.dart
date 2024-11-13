import 'package:flutter/material.dart';
import 'package:live_score_app/models/favorite_sport_model.dart';

class FavoriteSportGridView extends StatefulWidget {
  const FavoriteSportGridView({super.key});

  @override
  State<FavoriteSportGridView> createState() => _FavoriteSportGridViewState();
}

class _FavoriteSportGridViewState extends State<FavoriteSportGridView> {
  final List<FavoriteSportModel> sportsList = [
    FavoriteSportModel(text: "Soccer", image: "asstes/images/balls/1.png"),
    FavoriteSportModel(text: "Football", image: "asstes/images/balls/2.png"),
    FavoriteSportModel(text: "Basketball", image: "asstes/images/balls/3.png"),
    FavoriteSportModel(text: "Tennis", image: "asstes/images/balls/4.png"),
    FavoriteSportModel(text: "Volleyball", image: "asstes/images/balls/5.png"),
    FavoriteSportModel(
        text: "Baseball", image: "asstes/images/balls/bassball.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
