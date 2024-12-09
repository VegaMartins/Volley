import 'package:flutter/material.dart';
import 'score_display.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/widgets/generic_card.dart';

class CardScoreboard extends StatelessWidget {
  const CardScoreboard({
    super.key,
    required this.scoreTeamA,
    required this.ballOnTeamA,
    required this.scoreTeamB,
  });

  final int scoreTeamA;
  final bool ballOnTeamA;
  final int scoreTeamB;

  @override
  Widget build(BuildContext context) {
    return GenericCard(  
      child: Container(
        width: 450,
        height: 160,
      child: Row(
        children: [
          Flexible(
            child: ScoreDisplay(
              score: scoreTeamA,
              hasBall: ballOnTeamA,
            ),
          ),
          const VerticalDivider(
            width: 3, 
            thickness: 3, 
            color: AppColors.lightText, 
          ),
          Flexible(
            child: ScoreDisplay(
              score: scoreTeamB,
              hasBall: !ballOnTeamA,
            ),
          ),
        ],
      ),
    ),
    );
  }
}
