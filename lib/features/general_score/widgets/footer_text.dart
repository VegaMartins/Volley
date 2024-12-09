import 'package:flutter/material.dart';
import 'footer_text_style.dart';
import '../../../core/constants/app_colors.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    color: AppColors.lightText.withOpacity(0.4),
    border: const Border(
    top: BorderSide(color: AppColors.lightText, width: 2), 
    ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               FooterTextStyle(label: "Ziraldos:", value: "3"),
               FooterTextStyle(label: "Sicranos:", value: "1"),
               FooterTextStyle(label: "Autoconvidados:", value: "8"),
               FooterTextStyle(label: "Sparrings:", value: "4"),
       ],
      ),
    );
  }
}