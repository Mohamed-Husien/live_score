import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_appbar.dart';
import 'package:live_score_app/widgets/custom_live_matchs_score.dart';
import 'package:live_score_app/widgets/custom_news_card.dart';
import 'package:live_score_app/widgets/fav_sport_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: HomeViewBody(),
      ),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          title: 'LiveScore',
          icon: Icons.search,
          icon2: Icons.notifications_on_outlined,
          onPressed: () {},
        ),
        const SizedBox(
          height: 32,
        ),
        const CustomNewsCard(),
        const SizedBox(
          height: 24,
        ),
        const Expanded(child: FavoriteSportListView()),
        const SizedBox(
          height: 24,
        ),
        const CustomLiveMatchsScore(),
      ],
    );
  }
}
