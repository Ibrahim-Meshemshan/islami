import 'package:flutter/material.dart';

import '../HomeScreen/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
    return Scaffold(
      body: Image.asset(
        "assets/images/Splash.jpg",
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
