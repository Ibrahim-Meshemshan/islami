import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'item_sura_details_screen.dart';
import 'package:provider/provider.dart';

class SuraDetailseScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

   SuraDetailseScreen({super.key});

  @override
  State<SuraDetailseScreen> createState() => _SuraDetailseScreenState();
}

class _SuraDetailseScreenState extends State<SuraDetailseScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    SuraDetailsArg arg = ModalRoute.of(context)!.settings.arguments as SuraDetailsArg;
    if(verses.isEmpty){
    loadFile(arg.index);}
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
            provider.isDarkMode()?
            "assets/images/background_dark.png":
            "assets/images/background-light.png"

        ),fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text(arg.name,style: Theme.of(context).textTheme.titleLarge,)),
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.02,
              horizontal: MediaQuery.of(context).size.width*0.03
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height*0.06,
              horizontal: MediaQuery.of(context).size.width*0.05
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color:provider.isDarkMode()?
            Theme.of(context).primaryColor:
            MyTheme.whiteColor
          ),
          child: Center(
            child: verses.isEmpty? CircularProgressIndicator(color:provider.isDarkMode()? MyTheme.primaryLight:MyTheme.primaryDark,):
            ListView.separated(
              separatorBuilder: (context, index) {
                return  Divider(color:provider.isDarkMode()?
                MyTheme.yellowColor:
                    MyTheme.primaryLight
                    ,thickness: 2);
              },
              itemBuilder: (context, index) {
              return ItemSuraDetailsScreen(name: verses[index],index: index,);
            },
            itemCount: verses.length,
            ),
          ),
        ),

      )
    );
  }

  void loadFile(int index)async{
    String content = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> lines = content.split("\n");
    verses = lines;
    setState(() {

    });
  }
}
class SuraDetailsArg{
  String name;
  int index;
  SuraDetailsArg({required this.name,required this.index});
}