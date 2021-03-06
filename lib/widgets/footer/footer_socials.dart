// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';

class FooterSocials extends StatelessWidget {

  final String _twitter = 'https://twitter.com/patriothacks';
  final String _facebook = 'https://www.facebook.com/patriothacks/';
  final String _instagram = 'https://www.instagram.com/patriothacks/';
  final String _linkedin = 'https://www.linkedin.com/company/patriothacks/';
  final GetIt getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Follow us', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: ColorHolder().patriotGreen,
          ),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(2),
            width: 125,
            height: 45,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.facebook, color: ColorHolder().patriotGold,),
                  SizedBox(width: 5,),
                  Text('Facebook', style: TextStyle(color: ColorHolder().patriotGold,fontFamily: FontHolder().paragraphFont,),),
                ],
              ),
              onPressed: () {
                html.window.open(_facebook, '_blank');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            width: 125,
            height: 45,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.twitter, color: ColorHolder().patriotGold,),
                  SizedBox(width: 5,),
                  Text('Twitter',  style: TextStyle(color: ColorHolder().patriotGold,fontFamily: FontHolder().paragraphFont,)),
                ],
              ),
              onPressed: () {
                html.window.open(_twitter, '_blank');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            width: 125,
            height: 45,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.instagram, color: ColorHolder().patriotGold,),
                  SizedBox(width: 5,),
                  Text('Instagram',  style: TextStyle(color: ColorHolder().patriotGold,fontFamily: FontHolder().paragraphFont,)),
                ],
              ),
              onPressed: () {
                html.window.open(_instagram, '_blank');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            width: 125,
            height: 45,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.linkedin, color: ColorHolder().patriotGold,),
                  SizedBox(width: 5,),
                  Text('LinkedIn',  style: TextStyle(color: ColorHolder().patriotGold,fontFamily: FontHolder().paragraphFont,)),
                ],
              ),
              onPressed: () {
                html.window.open(_linkedin, '_blank');
              },
            ),
          ),
        ],
      ),
    );
  }
}
