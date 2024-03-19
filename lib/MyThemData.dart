import 'package:flutter/material.dart';

class MyThemData {
  static const Color primaryLight = Color(0xffB7935F);
  static const Color primaryDark = Color(0xFF141A2E);
  static const Color secondaryDark = Color(0xfffacc1d);
  static bool isDarkEnable = true;
  static const String fontMessiri = "messiri";

  static final ThemeData light = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontFamily: fontMessiri,
      ),
      titleMedium: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontFamily: fontMessiri,
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontFamily: fontMessiri,
          fontWeight: FontWeight.w400),
    ),
    cardTheme: CardTheme(
        color: Colors.white,
        elevation: 12,
        surfaceTintColor: Colors.transparent),
    scaffoldBackgroundColor: Colors.transparent,
    // AppBar
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true),

    // BottomNavigation
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryLight,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
        unselectedIconTheme: IconThemeData(color: Colors.white)),

    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryLight,
      primary: primaryLight,
    ),
    useMaterial3: true,
  );

  static final ThemeData dark = ThemeData(
    cardTheme: CardTheme(
        color: primaryDark,
        elevation: 12,
        surfaceTintColor: Colors.transparent),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontFamily: fontMessiri,
      ),
      titleMedium: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: fontMessiri,
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: fontMessiri,
          fontWeight: FontWeight.w400),
    ),

    // AppBar
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: fontMessiri,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true),

    // BottomNavigation
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(color: secondaryDark),
        backgroundColor: primaryDark,
        selectedItemColor: secondaryDark,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: secondaryDark, size: 32),
        unselectedIconTheme: IconThemeData(color: Colors.white)),

    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryDark,
      primary: primaryDark,
      secondary: secondaryDark,
    ),
    useMaterial3: true,
  );
}
