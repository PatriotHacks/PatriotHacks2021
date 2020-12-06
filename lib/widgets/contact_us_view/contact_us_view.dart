import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/body/body.dart';
import 'package:patriot_hacks/widgets/contact_us_view/contact_us_page_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';


class ContactUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          child: Body(
            child: ScreenTypeLayout(
              desktop: ContactUsPageDesktop(),
            ),
          ),
        )
      ],
    );
  }
}