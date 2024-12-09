import 'package:flutter/material.dart';
import '../../../core/themes/global_styles.dart';
import '../../../core/constants/app_colors.dart';

class AddTeamButton extends StatelessWidget {
  const AddTeamButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: AppColors.blueText,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(45),
      ),
      child: Text(
        '+',
        style: globalTextStyle.copyWith(fontSize: 35),
      ),
    );
  }
}
