import 'package:flutter/material.dart';
import 'package:islami/HomeScreen/HadethTab/HadethTab.dart';
import 'package:islami/HomeScreen/QuranTab/QuranTab.dart';
import 'package:islami/HomeScreen/RadioTab/RadioTab.dart';
import 'package:islami/HomeScreen/SebhaTab/SebhaTab.dart';
import 'package:islami/HomeScreen/settings/Settings_Tab.dart';
import 'package:islami/MyTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  var tabs = [QuranTab(),HadethTab(),RadioTab(),SebhaTab(),SettingsTab()];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:AssetImage(
              provider.isDarkMode()?
              "assets/images/background_dark.png" :
                "assets/images/background-light.png"
            ),fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.app_titile,

          style: Theme.of(context).textTheme.titleLarge,)),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor
          ),
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/quran_Icon.png")) ,
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/hadeth_Icon.png")) ,
                label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/radio_Icon.png")) ,
                    label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/sebha_Icon.png")) ,
                label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(icon:Icon(Icons.settings) ,
                    label: AppLocalizations.of(context)!.settings),

          ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
