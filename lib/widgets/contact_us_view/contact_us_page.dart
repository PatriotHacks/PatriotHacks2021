// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mailto/mailto.dart';
import 'package:patriot_hacks/utils/holder.dart';

class ContactUsPage extends StatelessWidget {
  final EdgeInsets rowSpacing = EdgeInsets.only(top: 20, bottom: 20);
  final SizedBox spaceBetweenCards = SizedBox(height: 50);
  final GetIt getIt = GetIt.instance;
  final String _email = 'team@patriothacks.org';

  final mailtoLink = Mailto(
    to: ['team@patriothacks.org'],
    cc: ['\n\n\n', null, ''],
    subject: 'new lines in subject \n FTW',
    validate: MailtoValidate.never,
  );

  final mailtoLink2 = Mailto(
    to: ['sponsor@patriothacks.org'],
    cc: ['\n\n\n', null, ''],
    subject: 'new lines in subject \n FTW',
    validate: MailtoValidate.never,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: rowSpacing,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'For more information, email\n\n us at ',
                        style: TextStyle(
                          color: getIt<ColorHolder>().patriotGreen,
                          fontFamily: getIt<FontHolder>().paragraphFont,
                        ),
                      ),
                      TextSpan(
                          text: _email,
                          style: TextStyle(
                            color: getIt.get<ColorHolder>().patriotGold,
                            decoration: TextDecoration.underline,
                            fontFamily: getIt<FontHolder>().paragraphFont,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              html.window.open(mailtoLink.toString(), '_blank');
                            })
                    ]),
                  ),
                  spaceBetweenCards,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Interested in becoming a sponsor? \n\n email us at ',
                          style: TextStyle(
                            color: getIt<ColorHolder>().patriotGreen,
                            fontFamily: getIt<FontHolder>().paragraphFont,
                          ),
                        ),
                        TextSpan(
                            text: _email,
                            style: TextStyle(
                              color: getIt.get<ColorHolder>().patriotGold,
                              decoration: TextDecoration.underline,
                              fontFamily: getIt<FontHolder>().paragraphFont,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                html.window
                                    .open(mailtoLink2.toString(), '_blank');
                              })
                      ],
                    ),
                  ),
                  // spaceBetweenCards,
                  // RichText(
                  //   textAlign: TextAlign.center,
                  //   text: TextSpan(
                  //       children: [
                  //         TextSpan(
                  //           text: 'For more information about\n\n becoming a Sponsor, see our \n\n',
                  //           style: TextStyle(color: getIt<ColorHolder>().patriotGreen,fontFamily: getIt<FontHolder>().paragraphFont,),
                  //         ),
                  //         TextSpan(
                  //             text: 'Sponsorship Information Flyer',
                  //             style: TextStyle(color: getIt.get<ColorHolder>().patriotGold, decoration: TextDecoration.underline,fontFamily: getIt<FontHolder>().paragraphFont,),
                  //             recognizer: TapGestureRecognizer()
                  //               ..onTap = () {
                  //                 html.window.open(_codeOfConduct, '_blank');
                  //               }
                  //         )
                  //       ]
                  //   ),
                  // )
                ], //child
              ),
            ),
          ),
        ],
      ),
    );
  }
}
