import 'package:flutter/material.dart';
import 'buildscore_card.dart';
import '../../../core/constants/app_colors.dart';

class team_score extends StatelessWidget {
  const team_score({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildScoreCard(
            "A",
            ["Ziraldos", "Ziraldos", "Ziraldos", "Sparrings"],
            [25, 25, 10, 25],
            [AppColors.blueText, AppColors.blueText, AppColors.yellowText, AppColors.blueText],
          ),
          buildScoreCard(
            "B",
            ["Sparrings", "Sicranos", "Autoconvidados", "Autoconvidados"],
            [10, 10, 25, 10],
            [AppColors.yellowText, AppColors.yellowText, AppColors.blueText, AppColors.yellowText],
            reverseScorePosition: true,  
          ),
        ],
      ),
    );
  }
}
