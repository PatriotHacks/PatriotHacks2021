import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/navigation_bar/navigation_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const DrawerItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: NavigationBarItem(title, navigationPath),
      ),
    );
  }
}
