import 'package:flutter/material.dart';
import 'package:patriot_hacks/routing/route_names.dart';
import 'package:patriot_hacks/utils/glitch.dart';

class NavigationBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: ModalRoute.of(context).settings.name == HomeRoute ? Container(width: 20, height: 20,) : Image.asset('assets/patriot_hacks_without_border.png'),
    );
  }
}
