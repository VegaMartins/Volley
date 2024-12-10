import 'package:flutter/material.dart';
import '../features/scoreboard/screens/winner_modal.dart';

class ScoreManager extends StatefulWidget {
  final Widget Function(
    BuildContext context,
    int scoreTeamA,
    int scoreTeamB,
    bool ballOnTeamA,
    Function(String team) incrementScore,
  ) builder;

  const ScoreManager({super.key, required this.builder});

  @override
  _ScoreManagerState createState() => _ScoreManagerState();
}

class _ScoreManagerState extends State<ScoreManager> {
  int scoreTeamA = 0;
  int scoreTeamB = 0;
  bool ballOnTeamA = true;

  void _incrementScore(String team) {
    setState(() {

      if (team == "A") {
        scoreTeamA++;
        ballOnTeamA = true;
      } else if (team == "B") {
        scoreTeamB++;
        ballOnTeamA = false;
      }

      if ((scoreTeamA >= 25 || scoreTeamB >= 25) &&
          (scoreTeamA - scoreTeamB).abs() >= 2) {
        _showWinnerModal(scoreTeamA > scoreTeamB ? "Ziraldos" : "Autoconvidados");
      }
    });
  }

  void _showWinnerModal(String winnerTeam) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WinnerModal(
          winnerTeam: winnerTeam,
          onNewSet: () {
            Navigator.of(context).pop();
            setState(() {
              scoreTeamA = 0;
              scoreTeamB = 0;
              ballOnTeamA = true;
            });
          },
          onEndGame: () {
            Navigator.of(context).pop();
            Navigator.pop(context);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      scoreTeamA,
      scoreTeamB,
      ballOnTeamA,
      _incrementScore,
    );
  }
}
