import 'package:flutter/material.dart';
import 'package:live_score_app/models/favorite_sport_model.dart';
import 'package:live_score_app/widgets/custom_selecte_fav_sport.dart';

class FavoriteSportListView extends StatefulWidget {
  const FavoriteSportListView({super.key});

  @override
  State<FavoriteSportListView> createState() => _FavoriteSportListViewState();
}

class _FavoriteSportListViewState extends State<FavoriteSportListView> {
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
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sportsList.length,
        itemBuilder: (context, index) {
          return CustomSelecteFavSport(
            sportModel: sportsList[index],
          );
        });
  }
}
