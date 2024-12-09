import 'package:flutter/material.dart';
import '../../core/themes/global_styles.dart';
import '../../core/constants/app_colors.dart';

class GenericButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double fontSize;
  final EdgeInsets padding;

  const GenericButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = 28,
    this.padding = const EdgeInsets.symmetric(horizontal: 85, vertical: 18),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blueText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: AppColors.lightText, width: 3),
        ),
        padding: padding,
        textStyle: globalTextStyle.copyWith(fontSize: fontSize),
      ),
      child: Text(
        text,
        style: globalTextStyle.copyWith(
          color: AppColors.lightText,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
