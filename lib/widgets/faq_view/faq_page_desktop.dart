import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_card.dart';
import 'dart:html' as html;
import 'faq_info.dart';

class FAQPageDesktop extends StatelessWidget{

  final EdgeInsets rowSpacing = EdgeInsets.only(top: 20, bottom: 20);
  final SizedBox spaceBetweenCards = SizedBox(width: 100);

  final ColorHolder colorHolder = GetIt.instance.get<ColorHolder>();
  final FontHolder fontHolder = GetIt.instance.get<FontHolder>();

  final String discordLink = "https://discord.com/";

  @override
  Widget build(BuildContext context) {

      return Center(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "FAQ",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Wrap(
                  children: [
                    FAQCard("Do I need to be a student to attend?", "Students who are currently enrolled in, or recently graduated (within the past 12 months) from a college/university are eligible to attend. All disciplines are welcome! If you are not a college student or recent graduate, you may be able to participate as a mentor or volunteer."),
                    FAQCard("What should I bring?", "Bring whatever you like!"),
                    FAQCard("Can anyone mentor?", "Of course! Whether you're an experienced student or a working professional, you are welcome to register as a mentor to help students debug or to host a workshop."),
                    FAQCard("Are hardware hacks allowed?", "Because of the COVID-19 pandemic, we may offer this option in some alternative format. For now, you may refer to a MLH's Hardware Lab for more information on getting hardware for your hacks."),
                    FAQCard("What if I don't know how to code?", "No worries! This event welcomes everyone of all skill levels! We will have a bunch of workshops and mentors here to help everyone learn something new, whether you've never touched a line of code or you're a seasoned veteran."),
                    FAQCard("How much does it cost?", "The event is completely free for all registered participants."),
                    FAQCard("Why join the event?", "To learn new things and also we have a plethora of prizes and swag."),
                    FAQCard("Do I have to have fun?", "Yes. We'll make sure that you do."),
                    FAQCard("How big can each team be?", "We like to keep teams at 4 or less participants so that the competition is fair between teams."),
                    FAQCard("Do I have to interact with people?", "We will be hosting a lot of online events to bring the community together."),
                    // discordCard(),
                    // anyMoreQuestionsCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  }

  Widget discordCard() {

    return Expanded(
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: GetIt.instance.get<ColorHolder>().patriotYellow,
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
                  "What is discord and why do I have to use it?",
                  style: TextStyle(
                    fontSize: FAQInfo.questionFontSize,
                    color: colorHolder.patriotDarkGreen,
                  ),
                )
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20
              ),
              child: RichText(
                text: TextSpan(
                  text: "Since we are online, we are using the Discord platform to host our event, if you do not have it, here is the website link",
                  style: TextStyle(
                    fontFamily: fontHolder.paragraphFont,
                    fontSize: FAQInfo.answerFontSize,
                    color: colorHolder.patriotBlack,
                    height: 1.25
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: " " + discordLink,
                        recognizer: new TapGestureRecognizer() ..onTap = () {
                          html.window.open(discordLink, '_blank');
                        },
                        style: TextStyle(
                          fontFamily: fontHolder.paragraphFont,
                          fontSize: FAQInfo.answerFontSize,
                          color: colorHolder.patriotGreen,
                          height: 1.25
                        ),
                      ),
                    ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }

  Widget anyMoreQuestionsCard(){

    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: GetIt.instance.get<ColorHolder>().patriotYellow,
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
                "Any more questions?",
                style: TextStyle(
                  fontSize: FAQInfo.questionFontSize,
                  color: colorHolder.patriotDarkGreen,
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20
            ),
            child: RichText(
              text: TextSpan(
                text: "Send us an email at ",
                style: TextStyle(
                    fontFamily: fontHolder.paragraphFont,
                    fontSize: FAQInfo.answerFontSize,
                    color: colorHolder.patriotBlack,
                    height: 1.25
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: "team@patriohacks.com ",
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: FAQInfo.answerFontSize,
                        color: colorHolder.patriotGreen,
                        height: 1.25
                    ),
                  ),
                  TextSpan(
                    text: "and we'll get back to you!",
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: FAQInfo.answerFontSize,
                        color: colorHolder.patriotBlack,
                        height: 1.25
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

  }

}
