import 'package:flutter/services.dart';

void setLandscapeOrientation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
  ]);
}

void resetToPortraitOrientation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
