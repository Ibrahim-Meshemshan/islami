import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class HadethTab extends StatefulWidget {

   HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    if(ahadeth.isEmpty){
      loadFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Center(child: Image.asset("assets/images/HadethHead.png"))),
        Divider(color: provider.isDarkMode()?
          MyTheme.yellowColor:MyTheme.primaryLight
          ,thickness: 3,),
        Text(AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,),
        Divider(color: provider.isDarkMode()?
        MyTheme.yellowColor:MyTheme.primaryLight
          ,thickness: 3,),
        ahadeth.isEmpty?
            Center(child: CircularProgressIndicator(color: MyTheme.primaryLight),):
        Expanded(
            flex: 3,
            child: ListView.separated(itemBuilder: (context, index) {
              return ItemHadethName(hadeth: ahadeth[index],);
        },
          separatorBuilder: (context, index) {
              return  Divider(color: provider.isDarkMode()?
              MyTheme.yellowColor:MyTheme.primaryLight
                ,thickness: 1);
          }, itemCount: ahadeth.length,
            ))
      ],
    );
  }

  void loadFile()async{
  String hadethContent = await rootBundle.loadString("assets/files/ahadeth.txt");
  List<String> hadethList = hadethContent.split("#\r\n");
  for(int i=0;i<hadethList.length;i++){
    List<String> hadethLines = hadethList[i].split("\n");
    String title = hadethLines[0];
    hadethLines.removeAt(0);
    Hadeth hadeth = Hadeth(title: title, content: hadethLines);
    ahadeth.add(hadeth);
    }
  setState(() {

  });
  }
}
class Hadeth{
  String title;
  List<String> content;

  Hadeth({required this.title,required this.content});

}