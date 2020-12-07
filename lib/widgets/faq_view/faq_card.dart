import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_info.dart';


class FAQCard extends StatefulWidget{

  final String answer, question;
  FAQCard(this.answer, this.question);

  FAQCardState createState() => new FAQCardState(answer, question);

}

class FAQCardState extends State<FAQCard> {

  final ColorHolder colorsHolder = GetIt.instance.get<ColorHolder>();
  final String answer, question;
  FAQCardState(this.question, this.answer);

  @override
  Widget build(BuildContext context) {

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
                    fontSize: FAQInfo.questionFontSize,
                    color: colorsHolder.patriotDarkGreen,
                  ),
                )
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20
              ),
              child: Text(
                answer,
                style: TextStyle(
                  fontSize: FAQInfo.answerFontSize,
                  color: Colors.black,
                  height: 1.25
                ),
              ),
            )
          ],
        ),
      ),
    );

  }

}