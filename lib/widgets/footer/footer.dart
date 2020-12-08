import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/footer/footer_code_of_conduct.dart';
import 'package:patriot_hacks/widgets/footer/footer_contact_us.dart';
import 'package:patriot_hacks/widgets/footer/footer_socials.dart';
import 'package:patriot_hacks/widgets/locator.dart';
import 'package:responsive_builder/responsive_builder.dart';

final GetIt getIt = GetIt.instance;

final ColorHolder colorHolder = locator<ColorHolder>();

class CustomFooter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: _Desktop(),
      tablet: _MobileTablet(),
      mobile: _MobileTablet(),
    );
  }
}

class _Desktop extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: colorHolder.patriotGreen,
          height: 1,
          thickness: 1,
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            FooterContactUs(),
            SizedBox(width: 40,),
            FooterSocials(),
            SizedBox(width: 40,),
            FooterCodeOfConduct(),
          ],
        ),
      ],
    );
  }
}

class _MobileTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: colorHolder.patriotGreen,
          height: 1,
          thickness: 1,
        ),
        SizedBox(
          height: 40,
        ),
        FooterSocials(),
        SizedBox(height: 20,),
        FooterCodeOfConduct(),
        SizedBox(height: 20,),
        FooterContactUs(),
      ],
    );
  }
}
