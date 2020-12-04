import 'package:flutter/material.dart';

import 'home_page.dart';

class HomePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomePage(),
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: Container(
              color: Colors.amber,
              child: Text('random stuff'),
            ),
          ),
        )
      ],
    );
  }
}
