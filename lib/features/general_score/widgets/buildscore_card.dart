import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/widgets/generic_card.dart';
import '../../../shared/widgets/generic_circle.dart';
import '../../../core/themes/global_styles.dart';

Widget buildScoreCard(
  String team,
  List<String> names,
  List<int> scores,
  List<Color> scoreColors, {
  bool reverseScorePosition = false,
}) {
  return Container(
    width: 246,
    height: 202,
    child: GenericCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GenericCircle(
            identifier: team,
            textStyle: const TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 24,
              color: AppColors.blueText,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          for (int i = 0; i < names.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: reverseScorePosition
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.end,
                  children: [
                    if (!reverseScorePosition)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                        child: Text(
                          names[i],
                          style: const TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 18,
                            color: AppColors.lightText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    if (reverseScorePosition)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          scores[i].toString(),
                          style: globalTextStyle.copyWith(
                            fontSize: 18,
                            color: scoreColors[i],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    if (!reverseScorePosition)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          scores[i].toString(),
                          style: globalTextStyle.copyWith(
                            fontSize: 18,
                            color: scoreColors[i],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    if (reverseScorePosition)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          names[i],
                          style: const TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 18,
                            color: AppColors.lightText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    ),
  );
}
