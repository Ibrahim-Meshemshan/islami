import 'package:flutter/material.dart';
import 'package:islami_test/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_test/HomeScreen/Hadeth/HadethDetailseScreen.dart';
import 'package:islami_test/SplashScreen/SplashScreen.dart';

import 'HomeScreen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsScreen.routeName: (context) => ChapterDetailsScreen(),
        HadethDetailseScreen.routeName: (context) => HadethDetailseScreen(),
      },
      home: Scaffold(),
      title: 'Flutter Demo',
      theme: ThemeData(
        cardTheme: CardTheme(
            color: Colors.white,
            elevation: 12,
            surfaceTintColor: Colors.transparent),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
            unselectedIconTheme: IconThemeData(color: Colors.white)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
        ),
        useMaterial3: true,
      ),
    );
  }
}
