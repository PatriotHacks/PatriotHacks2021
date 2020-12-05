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
          decoration: BoxDecoration(
            color: colorsHolder.patriotYellow,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border(
              top: BorderSide(width: 1),
              bottom: BorderSide(width: 1),
              left: BorderSide(width: 1),
              right: BorderSide(width: 1),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  question,
                  style: TextStyle(
                    fontSize: 20,
                    color: colorsHolder.patriotDarkGreen,
                  ),
                )
              ),
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