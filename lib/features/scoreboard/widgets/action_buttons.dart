import 'package:flutter/material.dart';
import 'action_button_style.dart';
import '../../../core/themes/global_styles.dart';

class ActionButtons extends StatelessWidget {
  final Function(String) onIncrementScore;

  const ActionButtons({super.key, required this.onIncrementScore});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ActionButton(
            labelText: 'Ace',
            textStyle: globalTextStyle,
            heroTag: 'ace_button',
            onPressed: () => onIncrementScore("A"),
          ),
          ActionButton(
            labelText: 'Ataque',
            textStyle: globalTextStyle,
            heroTag: 'ataque_button',
            onPressed: () => onIncrementScore("A"),
          ),
          ActionButton(
            labelText: 'Bloqueio',
            textStyle: globalTextStyle,
            heroTag: 'bloqueio_button',
            onPressed: () => onIncrementScore("A"),
          ),
          ActionButton(
            labelText: 'Erro',
            textStyle: globalTextStyle,
            heroTag: 'erro_button',
            onPressed: () => onIncrementScore("B"),
          ),
        ],
      ),
    );
  }
}

class ActionButtonsRight extends StatelessWidget {
  final Function(String) onIncrementScore;

  const ActionButtonsRight({super.key, required this.onIncrementScore});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ActionButton(
            labelText: 'Ace',
            textStyle: globalTextStyle,
            heroTag: 'ace_button_left',
            reverse: true,
            onPressed: () => onIncrementScore("B"),
          ),
          ActionButton(
            labelText: 'Ataque',
            textStyle: globalTextStyle,
            heroTag: 'ataque_button_left',
            reverse: true,
            onPressed: () => onIncrementScore("B"),
          ),
          ActionButton(
            labelText: 'Bloqueio',
            textStyle: globalTextStyle,
            heroTag: 'bloqueio_button_left',
            reverse: true,
            onPressed: () => onIncrementScore("B"),
          ),
          ActionButton(
            labelText: 'Erro',
            textStyle: globalTextStyle,
            heroTag: 'erro_button_left',
            reverse: true,
            onPressed: () => onIncrementScore("A"),
          ),
        ],
      ),
    );
  }
}
