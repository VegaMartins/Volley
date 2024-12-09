import 'package:flutter/material.dart';
import '../../../core/themes/global_styles.dart';
import '../../../core/constants/app_colors.dart';

class TeamRowStyle extends StatelessWidget {
  final String teamName;
  final int teamNumber;

  const TeamRowStyle({
    super.key,
    required this.teamName,
    required this.teamNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            teamName,
            style: globalTextStyle.copyWith(fontSize: 32, color: AppColors.yellowText),
          ),
          const SizedBox(width: 10),
          Text(
            '$teamNumber',
            style: globalTextStyle.copyWith(
                fontSize: 65, color: AppColors.blueText,),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Jogadores',
              style: globalTextStyle.copyWith(
                  fontSize: 10, color: AppColors.blueText,),
            ),
          ),
        ],
      ),
    );
  }
}
