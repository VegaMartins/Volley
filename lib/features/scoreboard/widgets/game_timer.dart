import 'package:flutter/material.dart';
import '../../../core/themes/global_styles.dart';

class GameTimer extends StatelessWidget {
  const GameTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Tempo de jogo: 1:14'00",
      style: globalTextStyle.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}