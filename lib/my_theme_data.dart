import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primaryColor=Color(0xFFE2BE7F);
  static const Color ScandryColor=Color(0xFF202020);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,

    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          color: primaryColor, fontSize: 30, fontWeight: FontWeight.bold),
      backgroundColor: ScandryColor ,
      centerTitle: true,
      iconTheme: IconThemeData(color: primaryColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      backgroundColor: primaryColor,
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
