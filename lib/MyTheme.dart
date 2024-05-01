import 'package:flutter/material.dart';

class MyTheme{

  static Color blackColor = Colors.black;
  static Color primaryLight = Color(0xffB7935F);
  static Color whiteColor = Colors.white;
  static Color yellowColor = Color(0xffFACC1D);
  static Color primaryDark = Color(0xff141A2E);


  static ThemeData lightMode = ThemeData(
    canvasColor: primaryLight,
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: blackColor
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryLight,
      selectedItemColor: blackColor
    ),
    textTheme: TextTheme(titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
     titleMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),
      titleSmall: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,),
    )
  );

  static ThemeData darkMode = ThemeData(
      canvasColor: primaryDark,
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color: whiteColor
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primaryDark,
          selectedItemColor: yellowColor
      ),
      textTheme: TextTheme(titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: whiteColor),
        titleMedium: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: whiteColor),
        titleSmall: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: whiteColor),
      )
  );
}

///
// import 'package:flutter/material.dart';
//
//
//
//
// class MyTheme{
//
//   static Color primaryColor = Color(0xff5D9CEC);
//   static Color whiteColor = Color(0xffffffff);
//   static Color blackColor = Color(0xff383838);
//   static Color greenColor = Color(0xff61E757);
//   static Color redColor = Color(0xffEC4B4B);
//   static Color greyColor = Color(0xff707070);
//   static Color backGroundColor = Color(0xffDFECDB);
//   static Color blackDarkColor = Color(0xff141922);
//   static Color backGroundDarkColor = Color(0xff060e1e);
//
//
//
//
//   static ThemeData lightTheme = ThemeData(
//       primaryColor: primaryColor,
//       scaffoldBackgroundColor: backGroundColor,
//       appBarTheme: AppBarTheme(
//         color: primaryColor,
//         elevation: 0,
//       ),
//       textTheme: TextTheme(
//           titleLarge: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: whiteColor
//           )
//       ),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//           selectedItemColor: primaryColor,
//           unselectedItemColor: greyColor
//       )
//   );
// }