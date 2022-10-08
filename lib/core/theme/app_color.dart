import 'package:flutter/material.dart';

class AppColor {
  static Color primaryColor = const Color(0xFF489E83);
  static Color secondaryColor = const Color(0xFFFAE591);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color blackGrey = const Color.fromARGB(255, 39, 39, 39);
  static Color backgroundBlack = const Color.fromARGB(255, 37, 37, 37);
  static Color backgroundWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color backgroundGray = const Color.fromARGB(255, 240, 240, 240);
  static Color transparent = Colors.transparent;

  static MaterialColor primarySwatch = const MaterialColor(
    0xFF489E83,
    {
      50: Color(0xFFa4cfc1),
      100: Color(0xFF91c5b5),
      200: Color(0xFF7fbba8),
      300: Color(0xFF6db19c),
      400: Color(0xFF5aa88f),
      500: Color(0xFF489E83),
      600: Color(0xFF418e76),
      700: Color(0xFF3a7e69),
      800: Color(0xFF326f5c),
      900: Color(0xFF2b5f4f),
    },
  );
}
