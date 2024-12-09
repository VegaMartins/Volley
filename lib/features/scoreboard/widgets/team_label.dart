import 'package:flutter/material.dart';
import 'team_label_style.dart';
import '../../../core/themes/global_styles.dart';

class TeamLabel extends StatelessWidget {
  const TeamLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0), 
          child: TeamLabelStyle(
          identifier: 'A',
          teamName: 'Ziraldos',
          textStyle: globalTextStyle,
        ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 120.0), 
          child: TeamLabelStyle(
            identifier: 'B',
            teamName: 'Autoconvidados',
            textStyle: globalTextStyle,
          ),
        ),
      ],
    );
  }
}
