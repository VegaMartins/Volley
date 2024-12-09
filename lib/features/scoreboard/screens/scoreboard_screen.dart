import 'package:flutter/material.dart';
import '../widgets/action_buttons.dart'; 
import '../widgets/card_scoreboard_screen.dart';
import '../widgets/overal_score_button.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/team_label.dart';
import '../widgets/orientation_handler.dart'; 
import '../widgets/icons_scoreboard_screen.dart';
import '../widgets/game_timer.dart';
import '../../../models/score_manager.dart'; 

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    setLandscapeOrientation();
    return PopScope(
      onPopInvokedWithResult: (popDisposition, result) async {
        resetToPortraitOrientation();
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: ScoreManager(
            builder: (
              context,
              int scoreTeamA,
              int scoreTeamB,
              bool ballOnTeamA,
              Function(String team) incrementScore,
            ) {
              return Stack(
                children: [
                  Column(                                  
                    mainAxisAlignment: MainAxisAlignment.start,                    
                    children: <Widget>[
                      IconsScoreboard(),                                     
                      TeamLabel(),                      
                      CardScoreboard(
                        scoreTeamA: scoreTeamA,
                        ballOnTeamA: ballOnTeamA,
                        scoreTeamB: scoreTeamB,
                      ),
                      GameTimer(),
                      OveralScoreButton(),
                    ],
                  ),
                  ActionButtons(onIncrementScore: incrementScore),
                  ActionButtonsRight(onIncrementScore: incrementScore),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
