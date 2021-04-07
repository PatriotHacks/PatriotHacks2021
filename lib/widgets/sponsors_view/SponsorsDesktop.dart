import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patriot_hacks/utils/holder.dart';

class SponsorsDesktop extends StatelessWidget {
  final EdgeInsets rowSpacing = EdgeInsets.only(top: 30, bottom: 30);
  final SizedBox spaceBetweenCards = SizedBox(width: 100);
  final SponsorImageHolder sponsorImageHolder = new SponsorImageHolder();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              "Our sponsors!",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Wrap(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  height: 300,
                  width: 350,
                  child: sponsorImageHolder.fdm,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                    height: 300,
                    width: 350,
                    child: sponsorImageHolder.fceda,
                    padding: rowSpacing,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  height: 300,
                  width: 350,
                  child: sponsorImageHolder.cyai,
                  padding: rowSpacing,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                    height: 300,
                    width: 350,
                    child: sponsorImageHolder.wnv,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                // Container(
                //     height: 100,
                //     width: 350,
                //     child: Image.asset('assets/caci.png')),
                // SizedBox(
                //   height: 20,
                //   width: 20,
                // ),
                // Container(
                //     height: 100,
                //     width: 350,
                //     child: Image.asset('assets/accurture.png')),
                // SizedBox(
                //   height: 20,
                //   width: 20,
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
