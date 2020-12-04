import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.amber,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Text('PatriotHacks',
             style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.w800,
               color: Colors.white
             ),
           )
        ],
      ),
    );
  }
}
