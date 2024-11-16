import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/views/fav_sport_view.dart';

class CustomNavigationBottomBar extends StatefulWidget {
  const CustomNavigationBottomBar({
    super.key,
  });

  @override
  State<CustomNavigationBottomBar> createState() =>
      _CustomNavigationBottomBarState();
}

class _CustomNavigationBottomBarState extends State<CustomNavigationBottomBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightBalckColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: GNav(
          color: Colors.grey,
          iconSize: 32,
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            if (index == 1) {
              Navigator.pushNamed(context, FavouriteSportView.id);
            }
            setState(() {
              selectedIndex = index;
            });
          },
          gap: 8,
          tabBackgroundColor: kPrimaryColor,
          padding: const EdgeInsets.all(16),
          tabs: const [
            GButton(icon: Icons.home_outlined, text: 'Home'),
            GButton(icon: Icons.favorite_border, text: 'Love'),
            GButton(icon: Icons.search, text: 'Search'),
            GButton(icon: Icons.account_circle_rounded, text: 'Account')
          ],
        ),
      ),
    );
  }
}
