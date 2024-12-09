
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class OveralScoreText extends StatelessWidget {
  const OveralScoreText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "PLACAR GERAL",
      style: TextStyle(
        fontFamily: 'ConcertOne',
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.blueText,
      ),
    );
  }
}