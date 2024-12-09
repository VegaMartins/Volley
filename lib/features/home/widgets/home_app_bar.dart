import 'package:flutter/material.dart';
import '../../../core/themes/global_styles.dart';
import '../../../core/constants/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});
  
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: AppColors.primary,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            "assets/image/ball.png",
            height: 60,
            width: 60,
          ),
          const SizedBox(width: 10),
          Stack(            
            children: [             
              Text('Volley', style: globalTextStyle.copyWith(fontSize: 60)),
              Positioned(
                top: 60,
                bottom: 1,
                left:10,                
              child:Text('do fim de semana', style: globalTextStyle.copyWith(fontSize: 14)),
              ),
            ],
          ),
        ],
      ),
      centerTitle: true,
      toolbarHeight: 100,
    );
  }
}
