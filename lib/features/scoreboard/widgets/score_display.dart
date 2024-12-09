import 'package:flutter/material.dart';
import '../../../core/themes/global_styles.dart'; 

class ScoreDisplay extends StatelessWidget {
  final int score;
  final bool hasBall;

  const ScoreDisplay({
    super.key,
    required this.score,
    required this.hasBall,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (hasBall)
              const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/image/ball.png'),
              ),
            Text(
              '$score',
              style: scoreTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
