import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/hex_color.dart';

class ColorHolder{

  var patriotYellow;
  var patriotDarkGreen;

  ColorHolder(){
    this.patriotYellow = Color.fromRGBO(247, 205, 84, 1);
    this.patriotDarkGreen = HexColor("006633");
  }

}

class ImageHolder{

  var patriotLogo;

  ImageHolder(){
    this.patriotLogo = Image.asset('assets/patriot_hacks_without_border.png');
  }

}