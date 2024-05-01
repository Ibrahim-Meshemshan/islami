import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDarkMode()?
                getSelectedItemWidget(AppLocalizations.of(context)!.night)
                :getUnSelectedItemWidget(AppLocalizations.of(context)!.night),
          ),
          SizedBox(height: 25),
          InkWell(
              onTap: () {
                /// change to ar
                 provider.changeTheme(ThemeMode.light);
              },
              child: provider.appTheme == ThemeMode.light ?
              getSelectedItemWidget(AppLocalizations.of(context)!.light)
            : getUnSelectedItemWidget(AppLocalizations.of(context)!.light),)
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
        Icon(Icons.check,size: 30,color:provider.isDarkMode()?MyTheme.yellowColor:MyTheme.primaryLight,)
      ],
    );
  }
  Widget getUnSelectedItemWidget(String text){
    return Row(
      children: [
        Text(text,style: TextStyle(color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.blackColor,fontSize: 25,fontWeight: FontWeight.w500)),
      ],
    );
  }
}
