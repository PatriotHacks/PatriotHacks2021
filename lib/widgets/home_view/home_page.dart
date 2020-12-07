import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  
  final double titleFontSize = 30;
  final double subTitleFontSize = 20;

  // What is Patriot Hacks
  final double wiphFontSize = 25;
  final double wiphParagraphFontSize = 15;

  final ColorHolder colorsHolder = GetIt.instance.get<ColorHolder>();
  
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'PatriotHacks',
                style: TextStyle(
                  fontSize: titleFontSize,
                  color: colorsHolder.patriotDarkGreen,
                ),
              ),
            ),
            Container(
              child: Text(
                'George Mason University',
                style: TextStyle(
                  fontSize: subTitleFontSize,
                  color: colorsHolder.patriotDarkGreen,
                ),
              ),
            ),
            //Space
            SizedBox(
              height: 125,
            ),
            Container(
              child: Text(
                'What Is PatriotHacks?',
                style: TextStyle(
                  fontSize: wiphFontSize,
                  color: colorsHolder.patriotYellow,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'PatriotHacks is a collegiate hackathon held at George Mason University in Fairfax, Virginia. For 36 hours, students from across the world will be free to enjoy plenty of workshops, activities, and networking events, along with free swag and food all weekend long. PatriotHacks is a space for innovators to play, learn, break, and revolutionize technology, all while building their resume and making memories that will last a lifetime. The event is free, and no experience is required to attend. Join us in our all new makerspace, also known as the MIX (Mason Innovation eXchange)!',
                style: TextStyle(
                  fontSize: wiphParagraphFontSize,
                  color: colorsHolder.patriotGreen
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
