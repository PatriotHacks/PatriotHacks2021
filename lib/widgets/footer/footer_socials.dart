import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterSocials extends StatelessWidget {
  final String _twitter = 'https://twitter.com/patriothacks';
  final String _facebook = 'https://www.facebook.com/patriothacks/';
  final String _instagram = 'https://www.instagram.com/patriothacks/';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Follow us', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(2),
            width: 120,
            height: 45,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.facebook),
                  SizedBox(width: 5,),
                  Text('Facebook'),
                ],
              ),
              onPressed: () {
                html.window.open(_facebook, '_blank');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            width: 120,
            height: 45,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.twitter),
                  SizedBox(width: 5,),
                  Text('Twitter'),
                ],
              ),
              onPressed: () {
                html.window.open(_twitter, '_blank');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            width: 120,
            height: 45,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.instagram),
                  SizedBox(width: 5,),
                  Text('Instagram'),
                ],
              ),
              onPressed: () {
                html.window.open(_instagram, '_blank');
              },
            ),
          ),
        ],
      ),
    );
  }
}
