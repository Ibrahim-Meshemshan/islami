import 'package:flutter/material.dart';
import 'package:islami/HomeScreen/QuranTab/sura_detailse_screen.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSuraDetailsScreen extends StatelessWidget {
  String name;
  int index;
   ItemSuraDetailsScreen({required this.index,required this.name});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text("$name{${index+1}}",
      textAlign: TextAlign.center,
      style: provider.isDarkMode()?
      Theme.of(context).textTheme.titleSmall:
      Theme.of(context).textTheme.titleSmall
      ,textDirection: TextDirection.rtl,);
  }
}
