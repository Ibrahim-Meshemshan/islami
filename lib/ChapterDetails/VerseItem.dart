import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerseItem extends StatelessWidget {
  String content;

  VerseItem(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      child: Text(
        content,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
