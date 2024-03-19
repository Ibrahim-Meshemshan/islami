import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_test/ChapterDetails/VerseItem.dart';

import '../MyThemData.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapter_details';

  ChapterDetailsScreen({super.key});

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    ChapterDetailsScreenArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsScreenArgs;

    if (versesList.isEmpty) loadChapter(args.index);

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(MyThemData.isDarkEnable
            ? "assets/images/background_dark.png"
            : "assets/images/default_bg.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: versesList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Card(
                margin: EdgeInsets.all(18),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 64),
                    width: double.infinity,
                    height: 1,
                    color: Color(0xffB7935F),
                  ),
                  itemBuilder: (context, index) {
                    return VerseItem(versesList[index]);
                  },
                  itemCount: versesList.length,
                ),
              ),
      ),
    );
  }

  void loadChapter(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${index}.txt");
    List<String> lines = fileContent.trim().split("\n");
    setState(() {
      versesList = lines;
    });
  }
}

class ChapterDetailsScreenArgs {
  int index;
  String title;

  ChapterDetailsScreenArgs(this.index, this.title);
}
