import 'package:flutter/material.dart';
import 'package:islami_test/ChapterDetails/ChapterDetailsScreen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;

  ChapterTitleWidget(this.title, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsScreenArgs(index, title));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Center(
              child: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ))),
    );
  }
}
