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
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              "Last year's sponsors",
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
                  height: 100,
                  width: 350,
                  child: Image.asset('assets/gdit.png'),
                  padding: rowSpacing,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/costar.png')),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 350,
                  child: Image.asset('assets/battele.png'),
                  padding: rowSpacing,
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/informedxp.png')),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/caci.png')),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                    height: 100,
                    width: 350,
                    child: Image.asset('assets/accurture.png')),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
