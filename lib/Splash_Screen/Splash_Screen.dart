import 'package:flutter/material.dart';
import 'package:islami/HomeScreen/HomeScreen.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';


class Splash_Screen extends StatelessWidget {
  static const String routeName = 'Splash_Screen';
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
     var provider = Provider.of<AppConfigProvider>(context);
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    },);
    return  Scaffold(
        backgroundColor: Colors.transparent,
      body: Image.asset(provider.isDarkMode()?
      "assets/images/splash_Dark.png":
      "assets/images/Splash_light.png"
        ,fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
    );
  }
}
