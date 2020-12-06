import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/body/body.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_page_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'faq_page_mobile_tablet.dart';

class FAQView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      height: 1000,
      child: ScreenTypeLayout(
        desktop: FAQPageDesktop(),
        mobile: FAQPageMobileTablet(),
        tablet: FAQPageMobileTablet(),
      ),
    );
  }
}
