import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class BarChart extends StatelessWidget {
  const BarChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          child: const Icon(
            Icons.bar_chart,
            color: AppColors.lightText,
            size: 28,
          ),
        ),
      ),
    );
  }
}