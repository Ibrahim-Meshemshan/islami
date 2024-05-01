import 'package:flutter/material.dart';
import 'package:islami/HomeScreen/HadethTab/HadethTab.dart';
import 'hadeth_detailse_screen.dart';

class ItemHadethName extends StatelessWidget {

  Hadeth hadeth;

   ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, HadethDetailseScreen.routeName,
            arguments: hadeth
          );
        },
        child: Text(hadeth.title, style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center,));
  }
}
