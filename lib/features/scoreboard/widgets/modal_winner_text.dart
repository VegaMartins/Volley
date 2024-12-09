import 'package:app_volley/core/constants/app_colors.dart';
import 'package:app_volley/core/themes/global_styles.dart';
import 'package:flutter/material.dart';

class ModalWinnerText extends StatelessWidget {
  const ModalWinnerText({
    super.key,
    required this.winnerTeam,
  });

  final String winnerTeam;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          winnerTeam,
          style: modalTitleStyle.copyWith(fontSize: 75),
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "VENCEU",
            style: TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 18,
              color: AppColors.blueText,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}