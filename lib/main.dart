import 'package:flutter/material.dart';
import 'package:islami_test/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_test/HomeScreen/Hadeth/HadethDetailseScreen.dart';
import 'package:islami_test/MyThemData.dart';
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
      theme: MyThemData.light,
      themeMode: ThemeMode.dark,
      darkTheme: MyThemData.dark,
    );
  }
}
