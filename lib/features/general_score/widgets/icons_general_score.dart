import 'package:flutter/material.dart';
import 'overal_score_text.dart';
import '../../../core/constants/app_colors.dart';

class IconsGeneralScore extends StatelessWidget {
  const IconsGeneralScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.lightText),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          OveralScoreText(),
          IconButton(
            icon: const Icon(Icons.show_chart, color: AppColors.lightText), 
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}




