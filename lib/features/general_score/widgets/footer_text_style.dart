import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class FooterTextStyle extends StatelessWidget {
  final String label;
  final String value;

  const FooterTextStyle({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'ConcertOne',
            fontSize: 25,
            color: AppColors.lightText,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(
            fontFamily: 'ConcertOne',
            fontSize: 25,
            color: AppColors.blueText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}