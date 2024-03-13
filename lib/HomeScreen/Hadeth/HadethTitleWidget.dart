import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_test/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_test/HomeScreen/Hadeth/HadethDetailseScreen.dart';

import 'Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailseScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Center(
              child: Text(
            hadeth.title,
            style: TextStyle(fontSize: 25),
          ))),
    );
  }
}
