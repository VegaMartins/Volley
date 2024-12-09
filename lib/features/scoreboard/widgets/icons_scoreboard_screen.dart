import 'package:flutter/material.dart';
import 'orientation_handler.dart'; 
import '../../../core/constants/app_colors.dart';

class IconsScoreboard extends StatelessWidget {
  const IconsScoreboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35, 
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 14), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.lightText),           
            onPressed: () {
              resetToPortraitOrientation(); 
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: AppColors.lightText),
            padding: EdgeInsets.zero,
            
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
