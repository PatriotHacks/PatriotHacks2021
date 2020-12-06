import 'package:flutter/material.dart';

import 'home_page.dart';

class HomePageMobileTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomePage(),
      ],
    );
  }
}
