import 'package:app_volley/features/scoreboard/widgets/modal_alert_dialog_style.dart';
import 'package:flutter/material.dart';

class WinnerModal extends StatelessWidget {
  final String winnerTeam;
  final VoidCallback onNewSet;
  final VoidCallback onEndGame;

  const WinnerModal({
    super.key,
    required this.winnerTeam,
    required this.onNewSet,
    required this.onEndGame,
  });

  @override
  Widget build(BuildContext context) {
    return ModalAlertDialogStyle(winnerTeam: winnerTeam, onNewSet: onNewSet);
  }
}


