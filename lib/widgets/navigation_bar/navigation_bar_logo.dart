import 'package:flutter/material.dart';
import 'package:patriot_hacks/routing/route_names.dart';

class NavigationBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 80,
        width: 150,
        child: ModalRoute.of(context).settings.name == HomeRoute ? Image.asset('patriothackslogo.png') : Image.asset('assets/patriot_hacks_without_border.png'),
      ),
    );
  }
}
