import 'package:flutter/material.dart';
import 'package:live_score_app/constant.dart';
import 'package:live_score_app/views/fav_sport_view.dart';
import 'package:live_score_app/widgets/sign_in_or_sign_up_part.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';
import 'package:live_score_app/widgets/players_card.dart';
import 'package:live_score_app/widgets/signin_show_model_bottom_sheet_body.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});
  static String id = 'FirstView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 32,
          left: 32,
          top: 64,
          bottom: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PlayersCard(),
              const SizedBox(
                height: 32,
              ),
              const CustomSemiBoldText(
                text: 'Dicover all about sport',
                fontSize: 40,
              ),
              const SizedBox(
                height: 4,
              ),
              const CustomRegulrText(
                text:
                    'Stay ahead of the game—live scores, instant updates, and all the action, right at your fingertips!',
                fontSize: 16,
              ),
              const SizedBox(
                height: 32,
              ),
              SignInOrSignUpBotton(
                onSingUpPressed: () =>
                    Navigator.pushNamed(context, FavouriteSportView.id),
                onSignINTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(32)),
                      ),
                      backgroundColor: kLightBalckColor,
                      context: context,
                      builder: (context) {
                        return const SignInShowModelBottomSheetBody();
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
