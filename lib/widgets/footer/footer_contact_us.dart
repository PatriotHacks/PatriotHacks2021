// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:url_launcher/url_launcher.dart';


class FooterContactUs extends StatelessWidget {

  final GetIt getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Contact us', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: ColorHolder().patriotGreen,
          ),),
          SizedBox(height: 20,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                children: [
                  TextSpan(
                    text: 'For more information, email\n\n us at ',
                    style: TextStyle(
                      color: ColorHolder().patriotGreen,
                      fontFamily: FontHolder().paragraphFont,
                    ),
                  ),
                  TextSpan(
                      text: 'team@patriothacks.org',
                      style: TextStyle(
                        color: ColorHolder().patriotGold,
                        decoration: TextDecoration.underline,
                        fontFamily: FontHolder().paragraphFont,
                      ),
                    recognizer: TapGestureRecognizer()..onTap = () async {
                        await launch('mailto:team@patriothacks.org');
                    }
                  )
                ]
            ),
          )
        ],
      ),
    );
  }
}
