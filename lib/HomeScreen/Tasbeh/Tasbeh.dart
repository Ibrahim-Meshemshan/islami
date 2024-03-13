import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasbehTab extends StatelessWidget {
  const TasbehTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 100,
              child: InkWell(
                  child: Image.asset(
                "assets/images/head of seb7a.png",
                height: 100,
              ))),
          Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/sebha_header.png",
                height: 225,
              )),
          Text(
            "عدد التسبيحات",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Text(
              "سبحان الله",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
