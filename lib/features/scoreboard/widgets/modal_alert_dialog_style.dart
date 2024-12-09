import 'package:app_volley/features/scoreboard/widgets/modal_end_set_text.dart';
import 'package:app_volley/features/scoreboard/widgets/modal_finish_button.dart';
import 'package:app_volley/features/scoreboard/widgets/modal_new_set_button.dart';
import 'package:app_volley/features/scoreboard/widgets/modal_winner_text.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class ModalAlertDialogStyle extends StatelessWidget {
  const ModalAlertDialogStyle({
    super.key,
    required this.winnerTeam,
    required this.onNewSet,
  });

  final String winnerTeam;
  final VoidCallback onNewSet;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.lightText.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: AppColors.lightText, width: 2),
      ),
      title: ModalEndSetText(),
      content: ModalWinnerText(winnerTeam: winnerTeam),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ModalFinishButton(),
          const SizedBox(width: 20), 
          ModalNewSetButton(onNewSet: onNewSet),
          ],
        ),
      ],
    );
  }
}