import 'package:flutter/material.dart';
import '../../../core/themes/global_styles.dart';
import '../../../core/constants/app_colors.dart';


class ActionButton extends StatelessWidget {
  final String labelText;
  final TextStyle textStyle;
  final String heroTag;
  final VoidCallback? onPressed; 
  final bool reverse;

  const ActionButton({
    super.key,
    required this.labelText,
    required this.textStyle,
    required this.heroTag,
    this.onPressed, 
    this.reverse = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment:
            reverse ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (reverse)
            Text(
              labelText,
              style: buttonTextStyle,
            ),
          const SizedBox(width: 8),
          FloatingActionButton(
            heroTag: heroTag,
            mini:true,
            backgroundColor: AppColors.blueText,
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
          
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              '+',
              style: globalTextStyle.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (!reverse) const SizedBox(width: 8),
          if (!reverse)
            Text(
              labelText,
              style: buttonTextStyle,
            ),
        ],
      ),
    );
  }
}
