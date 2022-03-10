import 'package:flutter/material.dart';

class SetSize {
  static double deviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double xs = 8.0;
  static double sm = 16.0;
  static double md = 32.0;
  static double lg = 64.0;
  static double xl = 128.0;
}
