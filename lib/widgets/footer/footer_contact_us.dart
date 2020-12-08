// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mailto/mailto.dart';
import 'package:patriot_hacks/utils/holder.dart';


class FooterContactUs extends StatelessWidget {

  final String _email = 'team@patriothacks.org';
  final GetIt getIt = GetIt.instance;

  final mailtoLink = Mailto(
    to: ['team@patriothacks.org'],
    cc: ['\n\n\n', null, ''],
    subject: 'new lines in subject \n FTW',
    validate: MailtoValidate.never,
  );

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
                      text: _email,
                      style: TextStyle(color: ColorHolder().patriotGold, decoration: TextDecoration.underline, fontFamily: FontHolder().paragraphFont,),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          html.window.open(mailtoLink.toString(), '_blank');
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
