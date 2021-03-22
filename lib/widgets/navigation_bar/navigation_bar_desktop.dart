
import 'package:flutter/material.dart';
import 'package:patriot_hacks/routing/route_names.dart';

import 'navigation_bar_item.dart';
import 'navigation_bar_logo.dart';

class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavigationBarItem('Home', HomeRoute),
              SizedBox(
                width: 20,
              ),
              NavigationBarItem('Register', RegisterRoute),
              SizedBox(
                width: 20,
              ),
              // NavigationBarItem('Sponsors', SponsorsRoute),
              // SizedBox(
              //   width: 20,
              // ),
              // NavigationBarItem('Discord', DiscordRoute),
              // SizedBox(
              //   width: 20,
              // ),
              NavigationBarItem('FAQ', FAQRoute),
              SizedBox(
                width: 20,
              ),
              NavigationBarItem('Contact us', ContactUsRoute),
            ],
          )
        ],
      ),
    );
  }
}
