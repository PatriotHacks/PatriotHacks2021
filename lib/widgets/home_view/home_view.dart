import 'package:patriot_hacks/widgets/body/body.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

import 'home_page_desktop.dart';
import 'home_page_mobile_tablet.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      child: ScreenTypeLayout(
        mobile: HomePageMobileTablet(),
        tablet: HomePageMobileTablet(),
        desktop: HomePageDesktop(),
      ),
    );
  }
}
