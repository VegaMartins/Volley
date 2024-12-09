import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

const TextStyle globalTextStyle = TextStyle(
  fontFamily: 'ConcertOne',
  color: AppColors.lightText,
);

TextStyle timeTextStyle = globalTextStyle.copyWith(
  fontSize: 16,
  color: AppColors.lightText,
);

TextStyle modalTitleStyle = globalTextStyle.copyWith(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 23, 20, 180),
);

 TextStyle buttonTextStyle = globalTextStyle.copyWith(
  fontSize: 26,
  fontWeight: FontWeight.bold,
);

TextStyle scoreTextStyle = globalTextStyle.copyWith(
  fontSize: 70,
  color: AppColors.lightText,
);
