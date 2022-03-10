import 'package:flutter/material.dart';

import 'theme_data.dart';

class SetTheme {
  static ThemeData light() {
    return SetThemeData.light();
  }

  static ThemeData dark() {
    return SetThemeData.dark();
  }
}

final theme = SetTheme.light();
