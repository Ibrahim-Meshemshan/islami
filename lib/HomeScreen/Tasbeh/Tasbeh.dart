import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;

  List<String> Azkar = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله أكبر",
  ];
  int index = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/head of seb7a.png")),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 78),
                  child: InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        counter++;
                        if (counter == 34) {
                          index++;
                          counter = 0;
                        }
                        if (index == Azkar.length) index = 0;
                        angle += 360 / 33;
                        setState(() {});
                      },
                      child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(
                            "assets/images/sebha_header.png",
                            width: 250,
                          ))),
                )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "عدد التسبيحات",
          style: TextStyle(fontSize: 35),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: 60,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xffB7935F),
          ),
          child: Text(
            "$counter",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            alignment: Alignment.center,
            width: 175,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xffB7935F),
            ),
            child: Text(
              "${Azkar[index]}",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
