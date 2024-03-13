import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_test/HomeScreen/Hadeth/Hadeth.dart';

class HadethDetailseScreen extends StatelessWidget {
  static const String routeName = 'HadethDetailseScreen';

  const HadethDetailseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.title),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 64),
          child: Card(
              child: Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                      child: Text(
                    hadeth.Content,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  )))),
        ),
      ),
    );
  }
}
