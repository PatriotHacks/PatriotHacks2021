import 'package:flutter/material.dart';
import 'package:patriot_hacks/widgets/body/body.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      height: 500,
      child: Center(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) => RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '404\n',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: sizingInformation.isMobile ? 100 : 160,
                    color: Colors.black,
                  )
                ),
                TextSpan(
                  text: 'Page not found!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: sizingInformation.isMobile ? 30 : 48,
                    color: Colors.black,
                  )
                )
              ]
            ),
          )
        ),
      ),
    );
  }
}
