import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_selecte_fav_sport.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class FavuoritSportViewBody extends StatefulWidget {
  const FavuoritSportViewBody({
    super.key,
  });

  @override
  State<FavuoritSportViewBody> createState() => _FavuoritSportViewBodyState();
}

class _FavuoritSportViewBodyState extends State<FavuoritSportViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSemiBoldText(
          text: 'What sport do you interest?',
          fontSize: 36,
        ),
        SizedBox(
          height: 14,
        ),
        CustomRegulrText(
          text: 'You can choose more than one.',
          fontSize: 16,
        ),
        SizedBox(
          height: 16,
        ),
        CustomSelecteFavSport(),
      ],
    );
  }
}
