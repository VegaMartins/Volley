import 'package:app_volley/core/themes/global_styles.dart';
import 'package:flutter/material.dart';

class ModalEndSetText extends StatelessWidget {
  const ModalEndSetText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "FIM DE SET",
      style: modalTitleStyle,
      ),
    );
  }
}