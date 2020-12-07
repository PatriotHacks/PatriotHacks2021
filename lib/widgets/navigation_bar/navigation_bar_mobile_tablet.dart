import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/navigation_bar/navigation_bar_logo.dart';

GetIt getIt = GetIt.instance;

class NavigationBarMobileTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.menu, color: getIt<ColorHolder>().patriotGreen,),
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
