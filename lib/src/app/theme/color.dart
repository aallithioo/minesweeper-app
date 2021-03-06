import 'package:flutter/material.dart';

class SetColor {
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color transparent = Colors.transparent;

  // based
  static Color primary = const Color(0xFFF4f4f4);
  static Color secondary = const Color.fromARGB(255, 240, 223, 243);
  static Color tertiary = const Color(0xFF892CDC);
  static Color quaternary = const Color(0xFF4F005D);
  static Color quinary = const Color(0xFF191819);

  // light mode
  static const Map light = {
    'white': Color.fromARGB(255, 255, 255, 255),
    'black': Color.fromARGB(255, 15, 16, 20),
    'grey': Color.fromARGB(255, 231, 231, 231),
    'blue': Color.fromARGB(255, 98, 205, 255),
    'green': Color.fromARGB(255, 100, 255, 128),
    'yellow': Color.fromARGB(255, 255, 139, 30),
    'red': Color.fromARGB(255, 255, 46, 35),
  };

  // grey color
  // static Map grey = {
  //   "50": Colors.grey[50],
  //   "100": Colors.grey[100],
  //   "200": Colors.grey[200],
  //   "300": Colors.grey[300],
  //   "400": Colors.grey[400],
  //   "500": Colors.grey[500],
  //   "600": Colors.grey[600],
  //   "700": Colors.grey[700],
  //   "800": Colors.grey[800],
  //   "900": Colors.grey[900],
  // };
}
