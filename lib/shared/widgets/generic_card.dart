import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class GenericCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Border? border;

  const GenericCard({
    super.key,
    required this.child,
    this.backgroundColor = AppColors.cardBackground,
  
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border ?? Border.all(color: AppColors.lightText, width: 3),
      ),
      child: child,
    );
  }
}
