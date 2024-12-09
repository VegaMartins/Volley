import 'package:flutter/material.dart';

import '../../scoreboard/screens/scoreboard_screen.dart';
import '../../../shared/widgets/generic_button.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericButton(
      text: 'Iniciar',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScoreboardScreen()),
        );
      },
    );
  }
}

