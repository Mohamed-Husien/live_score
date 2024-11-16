import 'package:flutter/material.dart';
import 'package:live_score_app/widgets/custom_regulr_text.dart';
import 'package:live_score_app/widgets/custom_semi_bold_text.dart';

class CustomNewsCard extends StatelessWidget {
  const CustomNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF246BFD),
                Color(0xFF0C0C69),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 180,
          child: Center(
            child: Image.asset(
              'asstes/images/alahly.png',
              height: 200,
              width: 180,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 12,
          bottom: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: [
                        Image.asset(
                          'asstes/images/balls/1.png',
                          width: 24,
                        ),
                        const CustomSemiBoldText(
                          text: "Football",
                          fontSize: 14,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                width: 180,
                height: 80,
                child: CustomSemiBoldText(
                  text: "ALAHLY Sc CAF Champion League Celebration",
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomRegulrText(
                text: "Yesterday, 06.30 PM",
                fontSize: 12,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
