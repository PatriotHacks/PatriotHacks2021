import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:patriot_hacks/utils/hex_color.dart';

class ColorHolder{

  var patriotYellow;
  var patriotDarkGreen;
  var patriotLime;
  var patriotGreen;

  ColorHolder(){
    this.patriotYellow = Color.fromRGBO(247, 205, 84, 1);
    this.patriotDarkGreen = HexColor("006633");
    this.patriotLime = Color.fromRGBO(150, 196, 69, 1);
    this.patriotGreen = Color.fromRGBO(83, 140, 65, 1);
  }

}

class ImageHolder{

  var patriotLogo;

  ImageHolder(){
    this.patriotLogo = Image.asset('assets/patriot_hacks_without_border.png');
  }

}