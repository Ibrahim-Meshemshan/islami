import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_test/HomeScreen/Hadeth/HadethTab.dart';
import 'package:islami_test/HomeScreen/Quran/QuranTab.dart';

import 'Radio/RadioTab.dart';
import 'Tasbeh/Tasbeh.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  var tabs = [QuranTab(), TasbehTab(), HadethTab(), RadioTab()];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectIndex,
            onTap: (index) => setState(() {
                  selectIndex = index;
                }),
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_quran.png"),
                    size: 30,
                  ),
                  label: "قران"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"),
                      size: 30),
                  label: "تسبيح"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),
                      size: 30),
                  label: "حديث"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png"),
                      size: 30),
                  label: "راديو"),
            ]),
        body: tabs[selectIndex],
      ),
    );
  }
}
