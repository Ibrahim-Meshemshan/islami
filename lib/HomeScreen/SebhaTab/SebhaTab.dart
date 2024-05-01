import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {

   SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  int index=0;

  double angel =0;
  List<String> tasbehat = [
    'سبحان الله','الحمدلله','لا اله الا الله','الله اكبر'
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/head_sebha.png",color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.primaryLight,),
            InkWell(
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                angel+=360/33;
                setState(() {
                  counter++;
                  if(counter%33==0){
                    counter=0;
                    index++;
                    if(index==tasbehat.length){
                      index=0;
                    }
                  }
                });
              },
              child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height*0.098,
                    horizontal: MediaQuery.of(context).size.width*0.19,
                  ),
                  child: Transform.rotate(
                      angle: angel,
                      child: Image.asset("assets/images/sebha_body.png",
                        color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.primaryLight,))),
            ),
          ],
        ),
        Text("عدد التسبيحات",style:provider.isDarkMode()?
        MyTheme.darkMode.textTheme.titleLarge:
        MyTheme.lightMode.textTheme.titleLarge,),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width*0.2,
          height: MediaQuery.of(context).size.width*0.22,
          decoration: BoxDecoration(
              color:provider.isDarkMode()?
              MyTheme.primaryDark:
              MyTheme.primaryLight,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Text("$counter",style:provider.isDarkMode()?
          MyTheme.darkMode.textTheme.titleMedium:
          MyTheme.lightMode.textTheme.titleMedium
            ,textAlign: TextAlign.center,),
        ),
        SizedBox(height: 15),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width*0.6,
          height: MediaQuery.of(context).size.width*0.22,
          decoration: BoxDecoration(
            color:provider.isDarkMode()?
            MyTheme.primaryDark:
            MyTheme.primaryLight,
            borderRadius: BorderRadius.circular(35)
          ),
          child: Text("${tasbehat[index]}",style:provider.isDarkMode()?
          MyTheme.darkMode.textTheme.titleLarge:
            MyTheme.lightMode.textTheme.titleLarge,

            textAlign: TextAlign.center,),
        )
      ],
    );
  }
}
