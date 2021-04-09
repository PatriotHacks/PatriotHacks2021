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

  var patriotLogo, schedule, error;

  ImageHolder(){
    this.patriotLogo = Image.asset('assets/patriot_hacks_without_border.png');
    this.schedule = Image.asset('assets/schedule.png');
    this.error = Image.asset('assets/error.png');
  }

}

class SponsorImageHolder{
  var cyai, wnv, fceda, fdm;

  SponsorImageHolder() {
    this.cyai = Image.asset('assets/CYAI_Logo_purple_block_with_URL.png');
    this.wnv = Image.asset('assets/FCEDA_Talent_Logo_Update_V2.png');
    this.fceda = Image.asset('assets/FCEDALogo.png');
    this.fdm = Image.asset('assets/fdm-logo-white.png');
  }

}

class FontHolder{

  // the header one does not fucking work
  var headerFont;
  var paragraphFont;

  FontHolder(){
    this.headerFont = "Tifax";
    this.paragraphFont = "Modeseven";
  }

}
