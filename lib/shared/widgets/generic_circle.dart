import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class GenericCircle extends StatelessWidget {
  final String identifier; 
  final TextStyle textStyle; 
  final double padding; 
  final Color backgroundColor; 

  const GenericCircle({
    super.key,
    required this.identifier,
    required this.textStyle,
    this.padding = 13, 
    this.backgroundColor = AppColors.lightText, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(padding), 
      child: Text(
        identifier,
        style: textStyle,
      ),
    );
  }
}
