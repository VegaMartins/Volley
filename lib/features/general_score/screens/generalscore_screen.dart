import 'package:flutter/material.dart';
import '../widgets/footer_text.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/team_score.dart';
import '../widgets/team_time.dart';
import '../widgets/bar_chart.dart';
import '../widgets/icons_general_score.dart';

class GeneralScoreScreen extends StatelessWidget {
  const GeneralScoreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary, 
        body: Column(
          children: [
            IconsGeneralScore(),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                  
                    Padding(
                     padding: const EdgeInsets.only(top: 30.0),
                     child: BarChart(), 
                    ),                                 
                    team_score(),                                                                             
                    Padding(
                     padding: const EdgeInsets.only(top: 30.0),
                     child: TeamTime(),
                    ),
                  ],
                ),
              ),
            ),
            FooterText(),
          ],
        ),
      ),
    );
  }
}

