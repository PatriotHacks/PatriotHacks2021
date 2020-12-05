import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../utils/holder.dart';

class FAQPageDesktop extends StatelessWidget{

  final ColorHolder colorsHolder = GetIt.instance.get<ColorHolder>();
  final double containerHeight = 200;
  final double questionFontSize = 20;
  final double answerFontSize = 15;

  final EdgeInsets rowSpacing = EdgeInsets.only(top: 20, bottom: 20);
  final SizedBox spaceBetweenCards = SizedBox(width: 100);

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
              padding: rowSpacing,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  faqCard("Do I need to be a student to attend?", "Students who are currently enrolled at a college/university or have graduated within the past 12 months are eligible to attend. Must also be 18 years or older. All disciplines are welcome! If you are not a recent graduate, you may wish to participate this hackathon as a mentor or volunteer. We are in discussion of adding high school students in local Northern Virginia region to participate in this hackathon. Stay tuned."),
                  spaceBetweenCards,
                  faqCard("How much does it cost?", "Nothing! Attending PatriotHacks is free. Plus, we provide you , swag, and prizes!"),
                ],
              ),
            ),
            Container(
              padding: rowSpacing,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  faqCard("What should I bring?", "Bring your school or government ID to prove your identity. You should definitly also bring your laptop, phone, and chargers."),
                  spaceBetweenCards,
                  faqCard("Can anyone mentor or volunteer?", "Of course! Whether you're an experienced student or a working professional, you are welcome to register as a mentor to help students or to host a workshop. You can also register as a volunteer to help with on-site logistics and organizing."),
                ],
              ),
            ),
            Container(
              padding: rowSpacing,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  faqCard("Are hardware hacks allowed?", "Because of the COVID-19 pandemic, we may offer this option in some alternative format. For now, you may refer to a MLH's Hardware Lab for more information on getting hardware for your hacks."),
                  spaceBetweenCards,
                  faqCard("What if I don't know how to code?", "No worries! This event welcomes everyone of all skill levels! We will have a bunch of workshops and mentors here to help everyone learn something new, whether you've never touched a line of code or you're a seasoned veteran."),
                ],
              ),
            ),
            Container(
              padding: rowSpacing,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  faqCard("Do I need to be on a team?", "No worries! This event welcomes everyone of all skill levels! We will have a bunch of workshops and mentors here to help everyone learn something new, whether you've never touched a line of code or you're a seasoned veteran."),
                  spaceBetweenCards,
                  faqCard("Will there be travel reimbursement?", "Because of the COVID-19 pandemic, there will be no travel reimbursements. The hackathon will be online."),
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
                    fontSize: questionFontSize,
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
                    fontSize: answerFontSize,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }

}