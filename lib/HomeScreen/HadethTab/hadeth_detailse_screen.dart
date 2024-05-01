import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/HomeScreen/HadethTab/HadethTab.dart';
import 'package:islami/HomeScreen/HadethTab/item_hadeth_details_screen.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../QuranTab/item_sura_details_screen.dart';


class HadethDetailseScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details';

   HadethDetailseScreen({super.key});

  @override
  State<HadethDetailseScreen> createState() => _HadethDetailseScreenState();
}

class _HadethDetailseScreenState extends State<HadethDetailseScreen> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var arg = ModalRoute
        .of(context)!
        .settings
        .arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.isDarkMode()?
              "assets/images/background_dark.png":
              "assets/images/background-light.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(arg.title, style: Theme
            .of(context)
            .textTheme
            .titleLarge,)),
        body: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.02,
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.03
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.06,
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:provider.isDarkMode()? Theme.of(context).primaryColor:
                  MyTheme.whiteColor
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetailsScreen(content:arg.content[index]);
            },
            itemCount: arg.content.length,
          ),
        ),
      ),
    );
  }
}