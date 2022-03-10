import 'package:flutter/material.dart';

import '../../app/theme/typography.dart';

import 'color.dart';

class SetThemeData {
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: SetColor.quinary,
      backgroundColor: SetColor.quinary,
      primaryColor: SetColor.quinary,
      textTheme: SetTextTheme.dark,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: SetColor.quinary,
        selectedItemColor: SetColor.tertiary,
        unselectedItemColor: SetColor.secondary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: SetColor.quinary,
        foregroundColor: SetColor.primary,
      ),
    );
  }

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: SetColor.primary,
      backgroundColor: SetColor.primary,
      primaryColor: SetColor.primary,
      textTheme: SetTextTheme.light,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: SetColor.primary,
        selectedItemColor: SetColor.tertiary,
        unselectedItemColor: SetColor.secondary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: SetColor.primary,
        foregroundColor: SetColor.quinary,
      ),
    );
  }
}
