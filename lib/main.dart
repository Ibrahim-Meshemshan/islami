import 'package:flutter/material.dart';
import 'package:islami/HomeScreen/HomeScreen.dart';
import 'package:islami/HomeScreen/QuranTab/sura_detailse_screen.dart';
import 'package:islami/MyTheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomeScreen/HadethTab/hadeth_detailse_screen.dart';
import 'HomeScreen/settings/Settings_Tab.dart';
import 'Splash_Screen/Splash_Screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/app_config_provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  late AppConfigProvider provider;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     provider = Provider.of<AppConfigProvider>(context);
     initSharedPreferences();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: Splash_Screen.routeName,
      routes: {
        Splash_Screen.routeName:(context) => Splash_Screen(),
        HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetailseScreen.routeName:(context) => SuraDetailseScreen(),
        HadethDetailseScreen.routeName:(context) => HadethDetailseScreen(),
        SettingsTab.routeName:(context) => SettingsTab(),
      },
      theme: MyTheme.lightMode,
      themeMode: provider.appTheme,
      darkTheme: MyTheme.darkMode,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
    /// any word for new branch
    /// *******
    /// hello frome ibrahim
  }
  Future<void> initSharedPreferences()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var language = prefs.getString("language");
    if(language!=null){
      provider.changeLanguage(language);
    }
    var isDark = prefs.getBool("isDark");
    if(isDark==true){
      provider.changeTheme(ThemeMode.dark);
    }else if(isDark==false){
      provider.changeTheme(ThemeMode.light);
    }
  }
}

