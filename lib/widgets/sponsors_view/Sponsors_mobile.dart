import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SponsorsMobile extends StatelessWidget {
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
                fontSize: 35,
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
                    width: 250,
                    child: Image.asset('assets/gdit.png')),
                Container(
                    height: 100,
                    width: 250,
                    child: Image.asset('assets/costar.png')),
                Container(
                    height: 100,
                    width: 250,
                    child: Image.asset('assets/battele.png')),
                Container(
                    height: 100,
                    width: 250,
                    child: Image.asset('assets/informedxp.png')),
                Container(
                    height: 100,
                    width: 250,
                    child: Image.asset('assets/caci.png')),
                Container(
                    height: 100,
                    width: 250,
                    child: Image.asset('assets/accurture.png')),],),
          ),

        ),
      ],
    );
  }
}