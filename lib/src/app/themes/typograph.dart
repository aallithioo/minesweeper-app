import 'package:flutter/material.dart';

import 'letter_spacing.dart';
import 'color.dart';
import 'font_weight.dart';
import 'size.dart';
import 'typeface.dart';

class SetTextTheme {
// Light Text Theme
  static TextTheme lightTextTheme = const TextTheme(
    headline1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.black,
      letterSpacing: SetLetterSpacing.negative15,
      fontSize: SetSize.huge,
      color: SetColor.black,
    ),
    headline2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.heavy,
      letterSpacing: SetLetterSpacing.negative10,
      fontSize: SetSize.large,
      color: SetColor.black,
    ),
    headline3: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.bold,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetSize.medium,
      color: SetColor.black,
    ),
    headline4: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.semiBold,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetSize.medium,
      color: SetColor.black,
    ),
    headline5: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.medium,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetSize.small,
      color: SetColor.black,
    ),
    headline6: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetSize.small,
      color: SetColor.black,
    ),
    subtitle1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetSize.medium,
      color: SetColor.black,
    ),
    subtitle2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive01,
      fontSize: SetSize.small,
      color: SetColor.black,
    ),
    bodyText1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive05,
      fontSize: SetSize.medium,
      color: SetColor.black,
    ),
    bodyText2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetSize.small,
      color: SetColor.black,
    ),
    button: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive13,
      fontSize: SetSize.small,
      color: SetColor.black,
    ),
    caption: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive04,
      fontSize: SetSize.tiny,
      color: SetColor.black,
    ),
    overline: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive15,
      fontSize: SetSize.tiny,
      color: SetColor.black,
    ),
  );

// Dark Text Theme
  static TextTheme darkTextTheme = const TextTheme(
    headline1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.black,
      letterSpacing: SetLetterSpacing.negative15,
      fontSize: SetSize.huge,
      color: SetColor.white,
    ),
    headline2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.heavy,
      letterSpacing: SetLetterSpacing.negative10,
      fontSize: SetSize.large,
      color: SetColor.white,
    ),
    headline3: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.bold,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetSize.medium,
      color: SetColor.white,
    ),
    headline4: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.semiBold,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetSize.medium,
      color: SetColor.white,
    ),
    headline5: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.medium,
      letterSpacing: SetLetterSpacing.positive10,
      fontSize: SetSize.small,
      color: SetColor.white,
    ),
    headline6: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetSize.small,
      color: SetColor.white,
    ),
    subtitle1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive02,
      fontSize: SetSize.medium,
      color: SetColor.white,
    ),
    subtitle2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive01,
      fontSize: SetSize.small,
      color: SetColor.white,
    ),
    bodyText1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive05,
      fontSize: SetSize.medium,
      color: SetColor.white,
    ),
    bodyText2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive03,
      fontSize: SetSize.small,
      color: SetColor.white,
    ),
    button: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive13,
      fontSize: SetSize.small,
      color: SetColor.white,
    ),
    caption: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive04,
      fontSize: SetSize.tiny,
      color: SetColor.white,
    ),
    overline: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      letterSpacing: SetLetterSpacing.positive15,
      fontSize: SetSize.tiny,
      color: SetColor.white,
    ),
  );
}
