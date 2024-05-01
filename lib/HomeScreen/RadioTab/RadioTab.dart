import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/Radio_head.png"),
        Text("اذاعة القران الكريم", style: provider.isDarkMode()?
        MyTheme.darkMode.textTheme.titleMedium:
        MyTheme.lightMode.textTheme.titleMedium,),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_rounded,color:provider.isDarkMode()?
            MyTheme.yellowColor:
                MyTheme.primaryLight
              ,size: 55,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color:provider.isDarkMode()?
            MyTheme.yellowColor:
            MyTheme.primaryLight,
              size: 55,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_rounded,color:provider.isDarkMode()?
            MyTheme.yellowColor:
            MyTheme.primaryLight,
              size: 55,)),
          ],
        )
      ],
    );
  }
}
