import 'package:flutter/material.dart';
import 'package:nyaru/src/app/themes/theme.dart';

import 'color.dart';
import 'typograph.dart';

class SetThemeData {
  static ThemeData darkThemeData() {
    return ThemeData(
      backgroundColor: SetColor.navy,
      scaffoldBackgroundColor: SetColor.navy,
      brightness: Brightness.dark,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: SetColor.white,
        backgroundColor: SetColor.navy,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: SetColor.navy,
      ),
      textTheme: SetTheme.setDarkTextTheme(),
    );
  }

  static ThemeData lightThemeData() {
    return ThemeData(
      backgroundColor: SetColor.white,
      scaffoldBackgroundColor: SetColor.white,
      brightness: Brightness.light,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: SetColor.navy,
        backgroundColor: SetColor.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: SetColor.white,
      ),
      textTheme: SetTheme.setLightTextTheme(),
    );
  }
}
