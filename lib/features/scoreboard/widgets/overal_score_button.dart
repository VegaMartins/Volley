import 'package:flutter/material.dart';
import '../../general_score/screens/generalscore_screen.dart';
import '../../../shared/widgets/generic_button.dart';


class OveralScoreButton extends StatelessWidget {
  const OveralScoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericButton(
      text: 'Placar Geral',
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GeneralScoreScreen(),
          ),
        );
      },
    );
  }
}

 