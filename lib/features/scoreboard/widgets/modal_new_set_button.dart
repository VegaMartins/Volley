import 'package:app_volley/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ModalNewSetButton extends StatelessWidget {
  const ModalNewSetButton({
    super.key,
    required this.onNewSet,
  });

  final VoidCallback onNewSet;
  @override
  Widget build(BuildContext context) {
    return TextButton(
     onPressed: onNewSet,
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
        "Novo Set",
        style: TextStyle(color: AppColors.yellowText, fontFamily: 'ConcertOne'),
      ),
    );
  }
}
