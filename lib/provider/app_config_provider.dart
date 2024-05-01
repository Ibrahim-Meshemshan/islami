import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier{

  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;


  Future<void> changeLanguage(String newLanguage) async {
    if(appLanguage==newLanguage){
      return;
    }
    appLanguage = newLanguage;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language',appLanguage);
    notifyListeners();
  }

  Future<void> changeTheme(ThemeMode newMode) async {
    if(appTheme== newMode) {
      return;
    }
    appTheme = newMode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark',appTheme==ThemeMode.light?false:true);
    notifyListeners();
  }
  bool isDarkMode(){
    return appTheme == ThemeMode.dark;
  }
}