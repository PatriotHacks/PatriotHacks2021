import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SponsorsDesktop extends StatelessWidget {

  final EdgeInsets rowSpacing = EdgeInsets.only(top: 30, bottom: 30);
  final SizedBox spaceBetweenCards = SizedBox(width: 100);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Center(
            child: Text(
              "Last Year's Sponsors",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
        Container(

          child: Center(
            child: Wrap(
              children: [
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/gdit.png'),
                  padding: rowSpacing,
                ),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/costar.png')),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/battele.png'),
                  padding: rowSpacing,
                ),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/informedxp.png')),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/caci.png')),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/accurture.png')),],),
          ),
            
        ),
      ],
    );
  }
}