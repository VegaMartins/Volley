import 'package:flutter/material.dart';
import 'team_row_style.dart';

class TeamRow extends StatelessWidget {
  const TeamRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TeamRowStyle(teamName: 'Sicranos', teamNumber: 3),
          TeamRowStyle(teamName: 'Autoconvidados', teamNumber: 3),
          TeamRowStyle(teamName: 'Ziraldos', teamNumber: 5),
          TeamRowStyle(teamName: 'Sparrings', teamNumber: 4),
        ],
      ),
    );
  }
}
