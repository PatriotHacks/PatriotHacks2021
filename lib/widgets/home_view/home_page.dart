
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/routing/route_names.dart';
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

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sizingInformation.isDesktop ? 50 : 0,
              ),
              SizedBox(
                child: imagesHolder.patriotLogo,
                height: sizingInformation.isMobile ? 150 : 250,
                width: sizingInformation.isMobile ? 150 : 250,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'What Is PatriotHacks?',
                  style: TextStyle(
                    fontSize: sizingInformation.isMobile ? 20 : wiphFontSize,
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
                      fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                      color: colorsHolder.patriotGreen,
                      height: 1.25
                    ),
                    text: 'PatriotHacks is the flagship hackathon at George Mason University where innovators can play, learn, create, game, and revolutionize technology. This year\'s hackathon is entirely online due to the COVID-19 pandemic. Students from across the world can enjoy plenty of workshops, activities, and networking events along with free swag. This provides hackers an opportunity to build their resumes and making memories that will last a lifetime. The event is entirely free, and no experience is required to attend. Join us from April 16th - April 18th, 2021.',
                    /* children: <InlineSpan>[
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
                    ], */
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              verticalSpace(20),
              homePageButton("Register", RegisterRoute, context),
              verticalSpace(10),
              // homePageButton("Mentor", mentorButtonLink),
              // verticalSpace(10),
              // homePageButton("Sponsor", SponsorsRoute, context),
              /* SizedBox(
                child: imagesHolder.schedule,
                height: sizingInformation.isMobile ? 450 : 700,
                width: sizingInformation.isMobile ? 450 : 700,
              ) */
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

  Widget homePageButton(String txt, String link, BuildContext context){
    return Container(
      width: 300,
      child: FlatButton(
        color: colorsHolder.patriotGold,
        onPressed: () {
          // html.window.open(link, '_blank');
          Navigator.of(context).pushNamed(link);
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
