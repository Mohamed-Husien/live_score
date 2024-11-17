import 'package:flutter/material.dart';

import 'package:live_score_app/views/views_on_navigation_bar/explor_view.dart';
import 'package:live_score_app/views/views_on_navigation_bar/home_view.dart';
import 'package:live_score_app/views/views_on_navigation_bar/profile_view.dart';
import 'package:live_score_app/views/views_on_navigation_bar/scores_view.dart';

Widget getSelectedWidget({required index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = const HomeView();
    case 1:
      widget = const ExploreView();
    case 2:
      widget = const ScoresView();
    case 3:
      widget = const ProfileView();

    default:
      widget = const HomeView();
  }
  return widget;
}
