import 'package:flutter/material.dart';
import 'team_row.dart';
import '../../../core/themes/global_styles.dart';
import '../../../core/constants/app_colors.dart';


class RotatedTeamsLabel extends StatelessWidget {
  const RotatedTeamsLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.lightText.withOpacity(0.5),
              border: Border.all(color: AppColors.lightText, width: 3),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 75),
            child: Text(
              'TIMES',
              style: globalTextStyle.copyWith(fontSize: 55),
            ),
          ),
        ),
        const TeamRow(),
      ],
    );
  }
}
