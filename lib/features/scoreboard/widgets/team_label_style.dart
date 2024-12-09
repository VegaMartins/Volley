import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/widgets/generic_circle.dart';

class TeamLabelStyle extends StatelessWidget {
  final String identifier;
  final String teamName;
  final TextStyle textStyle;

  const TeamLabelStyle({
    super.key,
    required this.identifier,
    required this.teamName,
    required this.textStyle,
  });
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        GenericCircle(
          identifier: identifier,
          textStyle: textStyle.copyWith(
            color: AppColors.blueText,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          teamName,
          style: textStyle.copyWith(
            color: AppColors.blueText,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
