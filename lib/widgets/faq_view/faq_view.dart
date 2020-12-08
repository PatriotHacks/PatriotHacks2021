import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/body/body.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_page_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';


class FAQView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          child: Body(
            child: ScreenTypeLayout(
              desktop: FAQPageDesktop(),
              mobile: FAQPageDesktop(),
              tablet: FAQPageDesktop(),
            ),
          ),
        )
      ],
    );
  }
}
