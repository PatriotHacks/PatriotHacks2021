
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
              // homePageButton("Register", RegisterRoute, context),
              // verticalSpace(10),
              Container(
                child: Text(
                  'Schedule',
                  style: TextStyle(
                    fontSize: sizingInformation.isMobile ? 20 : wiphFontSize,
                    color: colorsHolder.patriotGold,
                  ),
                ),
              ),
              verticalSpace(20),
              // homePageButton("Mentor", mentorButtonLink),
              // homePageButton("Our sponsors!", SponsorsRoute, context),
              SizedBox(
                child: imagesHolder.schedule,
                height: sizingInformation.isMobile ? 700 : 700,
                width: sizingInformation.isMobile ? 700 : 700,
              ),
              verticalSpace(40),
              Container(
                child: Text(
                  'Tracks',
                  style: TextStyle(
                    fontSize: sizingInformation.isMobile ? 20 : wiphFontSize,
                    color: colorsHolder.patriotGold,
                  ),
                ),
              ),
              verticalSpace(20),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Best Overall Hack: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                        text: 'All are automatically entered in this track, good luck and may the odds ever be in your favor.\nNintendo Switches will be awarded to the team with the best overall project.',
                        style: TextStyle(
                            fontFamily: fontHolder.paragraphFont,
                            fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                            color: colorsHolder.patriotGreen,
                            height: 1.25
                        )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Financial Track: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'College students struggle with budgeting, and poor financial decisions can lead to bad spending habits. Can you develop a way to help people make smart financial decisions? \nEach team member receives a \$100 VISA giftcard.',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Health: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'During the first few months of covid, many became worried about their health, and started making changes to their lives. Can you help people develop a healthier lifestyle? \nAfter all that hacking, go workout with FitBit Charge for all the members!',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Sustainability: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'Climate change has been a threat for years, and companies and individuals have been more active in trying to do their part in reducing waste and helping the climate. Can you come up with an idea that can help save the earth?\nBe blown away with Patagonia jackets for the entire team!',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Education: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'When the pandemic began, education was suddenly forced to move online, and many have expressed dissatisfaction with the quality of education they received. Do you have a way to make education better?\nMake presenting easy with mini projectors for all the members on your team! (or set up movie nights)',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Most likely to become a startup: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'Every start-up originates as an idea! Does yours have potential to become a unicorn?\nStay up late working with your new cofounders and mini Keurig for the team.',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Patriot Favorite: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'Everyone has a favorite project. Can you become one of ours?\nA gift card to (our) favorite study hangout, Panera Bread.',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Best All Female Hack: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'Some of the best technological advancements have been made thanks to women! Will your all women team be the next Ada Lovelace?\nExperiment with Rasberry PI 4 starter kits for all the team members.',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Best Beginner: ',
                    style: TextStyle(
                        fontFamily: fontHolder.paragraphFont,
                        fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                        color: colorsHolder.patriotGold,
                        height: 1.25
                    ),
                    children: [
                      TextSpan(
                          text: 'Tired of seeing entry level positions marketed towards people with 5+ years of experience? Tired of being turned away for not having any experience? Everyone has to start somewhere!\nAll teams comprising of newcomers are welcome to try this track!\nAll team members will receive a Corsair K55 keyboard!',
                          style: TextStyle(
                              fontFamily: fontHolder.paragraphFont,
                              fontSize: sizingInformation.isMobile ? 15 : wiphParagraphFontSize,
                              color: colorsHolder.patriotGreen,
                              height: 1.25
                          )
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(
                    fontSize: wiphParagraphFontSize,
                  ),
                ),
              ),
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
