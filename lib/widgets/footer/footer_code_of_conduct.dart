import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';


class FooterCodeOfConduct extends StatelessWidget {
  final String _codeOfConduct = 'https://studentconduct.gmu.edu/wp-content/uploads/2020/08/2020-2021-Code-of-Student-Conduct.pdf';
  final GetIt getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Code of conduct', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: getIt<ColorHolder>().patriotGold,
          ),),
          SizedBox(height: 20,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'If you intend to participate in this\n\nevent you must agree to the\n\n',
                  style: TextStyle(color: getIt<ColorHolder>().patriotGold,),
                ),
                TextSpan(
                  text: 'George Mason Student Code of Conduct',
                  style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      html.window.open(_codeOfConduct, '_blank');
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
