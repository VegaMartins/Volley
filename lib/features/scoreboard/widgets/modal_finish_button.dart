import 'package:app_volley/core/constants/app_colors.dart';
import 'package:app_volley/features/general_score/screens/generalscore_screen.dart';
import 'package:flutter/material.dart';

class ModalFinishButton extends StatelessWidget {
  const ModalFinishButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => const GeneralScoreScreen(),
     ),
    );
    },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 50,
        ),
        textStyle: const TextStyle(fontSize: 25),
        backgroundColor: AppColors.blueText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: AppColors.lightText, width: 2),
        ),
      ),
      child: const Text(
        "Terminar",
        style: TextStyle(color: AppColors.lightText, fontFamily: 'ConcertOne'),
      ),
    );
  }
}
