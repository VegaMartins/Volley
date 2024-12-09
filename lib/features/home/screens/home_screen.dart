import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/rotated_teams_label.dart';
import '../../../core/themes/global_styles.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/start_button.dart';
import '../widgets/add_team_button.dart';
import '../widgets/home_app_bar.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: const HomeAppBar(), 
      body: Container(
        color: AppColors.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedTeamsLabel(),
            const SizedBox(height: 50),
            Text('Jogo Casado', style: globalTextStyle.copyWith(fontSize: 28)),
            const SizedBox(height: 10),
            const StartButton(),
          ],
        ),
      ),
      floatingActionButton: const AddTeamButton(),
    );
  }
}

