import 'package:flutter/material.dart';
import 'package:patriot_hacks/services/navigation_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class NavigationBarItem extends StatelessWidget {

  final String title;
  final String navigationPath;

  const NavigationBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => SizedBox(
          width: sizingInformation.isDesktop ? null : double.infinity,
          child: FlatButton(
            onPressed: () {locator<NavigationService>().navigateTo(navigationPath);},
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 30.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
