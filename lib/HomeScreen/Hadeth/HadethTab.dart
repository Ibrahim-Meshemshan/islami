import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_test/HomeScreen/Hadeth/Hadeth.dart';

import 'HadethTitleWidget.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset("assets/images/hadeth_logo.png")),
        Expanded(
          flex: 3,
          child: Container(
            child: allHadeth.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethTitleWidget(allHadeth[index]);
                    },
                    itemCount: allHadeth.length,
                    separatorBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 64),
                      width: double.infinity,
                      height: 2,
                      color: Color(0xffB7935F),
                    ),
                  ),
          ),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allAhadethContent = fileContent.trim().split("#");
    for (int i = 0; i < allAhadethContent.length; i++) {
      String singleHadethContent = allAhadethContent[i].trim();

      String Content =
          singleHadethContent.substring(0, singleHadethContent.indexOf("\n"));
      String title =
          singleHadethContent.substring(singleHadethContent.indexOf("\n") + 1);
      Hadeth hadeth = Hadeth(Content, title);
      allHadeth.add(hadeth);
    }
    setState(() {});
  }
}
