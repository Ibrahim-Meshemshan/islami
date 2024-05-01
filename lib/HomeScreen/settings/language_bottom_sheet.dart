import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  late AppConfigProvider provider;
  @override
  Widget build(BuildContext context) {
     provider = Provider.of<AppConfigProvider>(context);
    return Container(

      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: provider.appLanguage=='en'?
                getSelectedItemWidget(AppLocalizations.of(context)!.english)
                :getUnSelectedItemWidget(AppLocalizations.of(context)!.english),
          ),
          SizedBox(height: 25),
          InkWell(
              onTap: () {
                /// change to ar
                 provider.changeLanguage('ar');
              },
              child: provider.appLanguage=='ar'?
              getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
            : getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic),)
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.primaryLight,
            fontWeight: FontWeight.bold
        ),),
        Icon(Icons.check,size: 30,color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.primaryLight,)
      ],
    );
  }
  Widget getUnSelectedItemWidget(String text){
    return Row(
      children: [
        Text(text,style: TextStyle(color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.blackColor,
            fontSize: 30,
            fontWeight: FontWeight.w500)),
      ],
    );
  }
}
