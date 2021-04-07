import 'package:patriot_hacks/widgets/body/body.dart';
import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/sponsors_view/SponsorsDesktop.dart';
import 'package:patriot_hacks/widgets/sponsors_view/SponsorsMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SponsorsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      child: ScreenTypeLayout(
        desktop: SponsorsDesktop(),
        mobile: SponsorsMobile(),
        tablet: SponsorsDesktop(),
      ),
    );
  }
}
