import 'package:flutter/material.dart';
import 'package:islami/HomeScreen/QuranTab/sura_detailse_screen.dart';


class ItemSuraName extends StatelessWidget {
  String name;
  int index;
   ItemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailseScreen.routeName,
        arguments: SuraDetailsArg(name: name, index: index)
        );
      },
      child: Text(name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall,),
    );
  }
}
