import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/navigation_bar/navigation_bar_desktop.dart';
import 'package:patriot_hacks/widgets/navigation_bar/navigation_bar_mobile_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavigationBarDesktop(),
      mobile: NavigationBarMobileTablet(),
      tablet: NavigationBarMobileTablet(),
    );
  }
}
