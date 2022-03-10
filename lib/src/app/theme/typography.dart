import 'package:flutter/material.dart';

import 'font_size.dart';
import 'color.dart';
import 'font_weight.dart';
import 'typeface.dart';

class SetTextTheme {
// light Text Theme
  static TextTheme light = TextTheme(
    headline1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.black,
      fontSize: SetFontSize.xl,
      color: SetColor.quinary,
    ),
    headline2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.extraBold,
      fontSize: SetFontSize.lg,
      color: SetColor.quinary,
    ),
    headline3: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.bold,
      fontSize: SetFontSize.md,
      color: SetColor.quinary,
    ),
    headline4: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.semiBold,
      fontSize: SetFontSize.md,
      color: SetColor.quinary,
    ),
    headline5: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.medium,
      fontSize: SetFontSize.md / 1.5,
      color: SetColor.quinary,
    ),
    headline6: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.quinary,
    ),
    subtitle1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.quinary,
    ),
    subtitle2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.quinary,
    ),
    bodyText1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.quinary,
    ),
    bodyText2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.quinary,
    ),
    button: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.quinary,
    ),
    caption: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.xs,
      color: SetColor.quinary,
    ),
    overline: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.xs,
      color: SetColor.quinary,
    ),
  );

// Dark Text Theme
  static TextTheme dark = TextTheme(
    headline1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.black,
      fontSize: SetFontSize.xl,
      color: SetColor.primary,
    ),
    headline2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.extraBold,
      fontSize: SetFontSize.lg,
      color: SetColor.primary,
    ),
    headline3: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.bold,
      fontSize: SetFontSize.md,
      color: SetColor.primary,
    ),
    headline4: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.semiBold,
      fontSize: SetFontSize.md,
      color: SetColor.primary,
    ),
    headline5: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.medium,
      fontSize: SetFontSize.md / 1.5,
      color: SetColor.primary,
    ),
    headline6: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.primary,
    ),
    subtitle1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.primary,
    ),
    subtitle2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.primary,
    ),
    bodyText1: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.primary,
    ),
    bodyText2: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.primary,
    ),
    button: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.sm,
      color: SetColor.primary,
    ),
    caption: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.xs,
      color: SetColor.primary,
    ),
    overline: TextStyle(
      fontFamily: SetTypeface.primary,
      fontWeight: SetFontWeight.regular,
      fontSize: SetFontSize.xs,
      color: SetColor.primary,
    ),
  );
}
