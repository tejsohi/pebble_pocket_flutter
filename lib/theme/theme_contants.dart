import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFFf7f7f7),
  secondaryHeaderColor: Colors.black,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Color(0xFFf7f7f7),
      ),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      minimumSize: MaterialStateProperty.all(
        Size(200, 40),
      ),
      elevation: MaterialStateProperty.all(0),
      side: MaterialStateProperty.all(
        BorderSide(color: Colors.transparent),
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  cardTheme: CardTheme(color: Colors.grey[800]),
  primaryColor: Color(0xff1e1f22),
  secondaryHeaderColor: Colors.white,
  dividerColor: Color(0xffFFFFFF),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Color(0xff171917),
      ),
      minimumSize: MaterialStateProperty.all(
        Size(200, 40),
      ),
      elevation: MaterialStateProperty.all(0),
    ),
  ),
);
