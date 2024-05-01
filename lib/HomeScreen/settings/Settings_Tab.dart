import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/HomeScreen/settings/language_bottom_sheet.dart';
import 'package:islami/HomeScreen/settings/theme_bottom_sheet.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';


class SettingsTab extends StatefulWidget {
  static const String routeName = 'settings_tab';
   SettingsTab({super.key});


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  late AppConfigProvider provider;
  @override
  Widget build(BuildContext context) {
     provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(

              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: provider.isDarkMode()?MyTheme.primaryDark:MyTheme.primaryLight,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: provider.isDarkMode()?MyTheme.yellowColor:Colors.transparent,width: 2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage=='en'?
                    AppLocalizations.of(context)!.english:
                    AppLocalizations.of(context)!.arabic
                    ,style: Theme.of(context).textTheme.titleSmall,),
                  Icon(Icons.arrow_drop_down,size: 35,color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.blackColor ,),
                ],
              ),
            ),
          ),



          SizedBox(height: 15),
          Text(AppLocalizations.of(context)!.mode,style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: provider.isDarkMode()?MyTheme.primaryDark:MyTheme.primaryLight,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: provider.isDarkMode()?MyTheme.yellowColor:Colors.transparent,width: 2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.titleSmall,),
                  Icon(Icons.arrow_drop_down,size: 35,color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.blackColor ,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void  showLanguageBottomSheet() {
    showModalBottomSheet(
      backgroundColor: provider.isDarkMode()?MyTheme.primaryDark:MyTheme.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
      context: context,
        builder: (context) {
          return LanguageBottomSheet();
        },);
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      backgroundColor: provider.isDarkMode()?MyTheme.primaryDark:MyTheme.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      context: context,
        builder: (context) {
          return ThemeBottomSheet();
        },
    );
  }
}
