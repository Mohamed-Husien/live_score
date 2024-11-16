import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_saerch_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      required this.title,
      required this.icon,
      this.onPressed,
      required this.icon2});
  final String title;
  final IconData icon;
  final IconData icon2;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // SizedBox(
        //   height: 84,
        // ),
        CustomRegulrText(
          text: title,
          fontSize: 28,
          color: Colors.white,
        ),
        SearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
        SearchIcon(
          onPressed: onPressed,
          icon: icon2,
          notificationCount: 5,
        ),
      ],
    );
  }
}
