import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/navigation_bar/navigation_bar_logo.dart';

class NavigationBarMobileTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.menu),
              onPressed: () {
              Scaffold.of(context).openDrawer();
              },
            ),
            NavigationBarLogo(),
          ],
        ),
    );
  }
}
