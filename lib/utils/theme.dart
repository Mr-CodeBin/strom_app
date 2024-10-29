import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'OpenSans',
    disabledColor: const Color(0xffBDBDBD),
    primaryColor: const Color(0xff4A6281),
    scaffoldBackgroundColor: const Color(0xffF6F6F6),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'OpenSans',
    disabledColor: const Color(0xffBDBDBD),
    brightness: Brightness.dark,
    primaryColor: const Color(0xff4A6281),
    scaffoldBackgroundColor: const Color(0xff17191D),
  );
}
