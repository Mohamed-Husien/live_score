import 'package:flutter/material.dart';

import 'package:live_score_app/widgets/favourite_sport_body.dart';

class FavouriteSportView extends StatelessWidget {
  const FavouriteSportView({super.key});
  static String id = 'favSportView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 90, right: 28, left: 28, bottom: 30),
        child: FavuoritSportViewBody(),
      ),
    );
  }
}
