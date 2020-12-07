import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  
  final double titleFontSize = 30;
  final double subTitleFontSize = 20;

  // What is Patriot Hacks
  final double wiphFontSize = 30;
  final double wiphParagraphFontSize = 20;

  final ColorHolder colorsHolder = GetIt.instance.get<ColorHolder>();
  final ImageHolder imagesHolder = GetIt.instance.get<ImageHolder>();
  final FontHolder fontHolder = GetIt.instance.get<FontHolder>();

  final String registrationButtonLink = "https://www.mix.gmu.edu/";
  final String mentorButtonLink = "https://www.mix.gmu.edu/";
  final String sponsorButtonLink = "https://www.mix.gmu.edu/";

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
              SizedBox(
                child: imagesHolder.patriotLogo,
                height: 250,
                width: 250,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'What Is PatriotHacks?',
                  style: TextStyle(
                    fontSize: wiphFontSize,
                    color: colorsHolder.patriotGold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: fontHolder.paragraphFont,
                      fontSize: wiphParagraphFontSize,
                      color: colorsHolder.patriotGreen,
                      height: 1.25
                    ),
                    text: 'PatriotHacks is a collegiate hackathon that will be held entirely online due to the COVID-19 pandemic. For 14 days, students from across the world will be free to enjoy plenty of workshops, activities, and networking events, along with free swag (limited to participants in the US). PatriotHacks is a space for innovators to play, learn, break, and revolutionize technology, all while building their resume and making memories that will last a lifetime. The event is free, and no experience is required to attend. Join us in January 2021 for our',
                    children: <InlineSpan>[
                      TextSpan(
                        text: ' mini ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: fontHolder.paragraphFont,
                          color: colorsHolder.patriotGold
                        ),
                      ),
                      TextSpan(
                        text: 'hackathon and start off your new year right!'
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              verticalSpace(15),
              homePageButton("Registration", registrationButtonLink),
              verticalSpace(10),
              homePageButton("Mentor", mentorButtonLink),
              verticalSpace(10),
              homePageButton("Sponsor", sponsorButtonLink),
            ],
          ),
        );
      },
    );
  }

//  Widget downArrow(){
//    return IconButton(
//      icon: FaIcon(FontAwesomeIcons.arrowDown),
//      iconSize: 50,
//      disabledColor: colorsHolder.patriot,
//      hoverColor: colorsHolder.patriotDarkGreen,
//    );
//  }

//  Widget howToGetInvolvedCard(IconData icon, String header, String txt){
//
//    final double headerSize = 20;
//
//    return Expanded(
//      child: Container(
//        color: colorsHolder.patriotYellow,
//        padding: EdgeInsets.all(10),
//        child: Column(
//          children: [
//            Text(
//              header,
//              style: TextStyle(
//                color: colorsHolder.patriotDarkGreen,
//                fontSize: headerSize,
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//
//  }

  Widget homePageButton(String txt, String link){
    return Container(
      width: 300,
      color: colorsHolder.patriotYellow,
      child: FlatButton(
        onPressed: () {
          html.window.open(link, '_blank');
        },
        hoverColor: colorsHolder.patriotDarkGreen,
        padding: EdgeInsets.all(20),
        child: Text(
          txt,
          style: TextStyle(
            color: colorsHolder.patriotGreen,
            fontFamily: fontHolder.paragraphFont,
          ),
        ),
      ),
    );
  }

  Widget verticalSpace(double amount){
    return SizedBox(
      height: amount,
    );
  }

}
