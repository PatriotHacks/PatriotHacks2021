import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:patriot_hacks/utils/hex_color.dart';

class ColorHolder{

  var patriotYellow;
  var patriotDarkGreen;
  var patriotBlack;
  var patriotGreen;
  var patriotGold;

  ColorHolder(){
    this.patriotYellow = Color.fromRGBO(247, 205, 84, 1);
    this.patriotDarkGreen = HexColor("006633");
    this.patriotBlack = HexColor("060000");
    this.patriotGreen = HexColor("008037");
    this.patriotGold = HexColor("FFCA5F");
  }

}

class ImageHolder{

  var patriotLogo;

  ImageHolder(){
    this.patriotLogo = Image.asset('assets/patriot_hacks_without_border.png');
  }

}