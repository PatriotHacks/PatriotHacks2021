import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/holder.dart';

class FAQPageDesktop extends StatelessWidget{

  final ColorHolder colorsHolder = new ColorHolder();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.only(
                  top: 20,
                  bottom: 20
              ),
              child: Text(
                "FAQ",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: rowSpacing(),
              height: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  faqCard("question", "answer"),
                  cardSpace(),
                  faqCard("question", "answer"),
                ],
              ),
            ),
            Container(
              padding: rowSpacing(),
              height: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  faqCard("question", "answer"),
                  cardSpace(),
                  faqCard("question", "answer"),
                ],
              ),
            ),

          ],
        )
      ],
    );

  }

  Expanded faqCard(question, answer){
    return Expanded(
        child: Container(
          color: colorsHolder.patriotYellow,
          child: Column(
            children: [
              Text(
                question,
                style: TextStyle(
                  color: colorsHolder.patriotDarkGreen,
                ),
              )
            ],
          ),
        ),
    );
  }

  EdgeInsets rowSpacing(){
    return EdgeInsets.only(top: 20, bottom: 20);
  }

  SizedBox cardSpace(){
    return SizedBox(width: 100);
  }

}