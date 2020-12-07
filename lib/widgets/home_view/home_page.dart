import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'dart:html' as html;

class HomePage extends StatelessWidget {
  
  final double titleFontSize = 30;
  final double subTitleFontSize = 20;

  // What is Patriot Hacks
  final double wiphFontSize = 25;
  final double wiphParagraphFontSize = 15;

  final ColorHolder colorsHolder = GetIt.instance.get<ColorHolder>();

  final String mixGMULink = "https://www.mix.gmu.edu/";

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'PatriotHacks',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    color: colorsHolder.patriotDarkGreen,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'George Mason University',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: subTitleFontSize,
                    color: colorsHolder.patriotDarkGreen,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              downArrow(),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'What Is PatriotHacks?',
                  style: TextStyle(
                    fontSize: wiphFontSize,
                    color: colorsHolder.patriotDarkGreen,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: Text(
                  'PatriotHacks is a collegiate hackathon held at George Mason University in Fairfax, Virginia. For 36 hours, students from across the world will be free to enjoy plenty of workshops, activities, and networking events, along with free swag and food all weekend long. PatriotHacks is a space for innovators to play, learn, break, and revolutionize technology, all while building their resume and making memories that will last a lifetime. The event is free, and no experience is required to attend. Join us in our all new makerspace, also known as the MIX (Mason Innovation eXchange)!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: wiphParagraphFontSize,
                      color: colorsHolder.patriotGreen
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text.rich(
                  TextSpan(
                    text: "To learn more about the MIX, check out their website at ",
                    children: <InlineSpan>[
                      TextSpan(
                        text: "https://www.mix.gmu.edu/",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            html.window.open(mixGMULink, '_blank');
                          },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: Text(
                  'How do I get involved?',
                  style: TextStyle(
                    color: colorsHolder.patriotDarkGreen,
                    fontSize: wiphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    howToGetInvolvedCard(FontAwesomeIcons.accessibleIcon, "Testing", "Testing"),
                    horizationtalSpace(),
                    howToGetInvolvedCard(FontAwesomeIcons.accessibleIcon, "Testing", "Testing"),
                    horizationtalSpace(),
                    howToGetInvolvedCard(FontAwesomeIcons.accessibleIcon, "Testing", "Testing"),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget downArrow(){
    return IconButton(
      icon: FaIcon(FontAwesomeIcons.arrowDown),
      iconSize: 50,
      disabledColor: colorsHolder.patriotLime,
      hoverColor: colorsHolder.patriotDarkGreen,
    );
  }

  Widget howToGetInvolvedCard(IconData icon, String header, String txt){

    final double headerSize = 20;

    return Expanded(
      child: Container(
        color: colorsHolder.patriotYellow,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              header,
              style: TextStyle(
                color: colorsHolder.patriotDarkGreen,
                fontSize: headerSize,
              ),
            ),
          ],
        ),
      ),
    );

  }

  Widget horizationtalSpace(){
    return SizedBox(
      width: 50,
    );
  }

}
