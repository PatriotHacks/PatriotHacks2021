import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_page.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_page_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FAQView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: FAQPageDesktop(),
      mobile: FAQPageMobileTablet(),
      tablet: FAQPageMobileTablet(),
    );
  }
}
