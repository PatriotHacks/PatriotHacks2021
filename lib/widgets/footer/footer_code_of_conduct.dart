import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;


class FooterCodeOfConduct extends StatelessWidget {
  final String _codeOfConduct = 'https://studentconduct.gmu.edu/wp-content/uploads/2020/08/2020-2021-Code-of-Student-Conduct.pdf';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Code of conduct', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),),
          SizedBox(height: 20,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'If you intend to participate in this\n\nevent you must agree to the\n\n',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'George Mason Student Code of Conduct',
                  style: TextStyle(color: Colors.blueAccent),
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
