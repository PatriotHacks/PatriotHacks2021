import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/body/body.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ErrorView extends StatelessWidget {

  final ImageHolder imagesHolder = GetIt.instance.get<ImageHolder>();
  final ColorHolder colorsHolder = GetIt.instance.get<ColorHolder>();

  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(
        builder: (context, sizingInformation){

          return Body(
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '404\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: sizingInformation.isMobile ? 100 : 160,
                              color: colorsHolder.patriotYellow,
                            )
                          ),
                          TextSpan(
                            text: 'Page not found!',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: sizingInformation.isMobile ? 30 : 48,
                              color: colorsHolder.patriotYellow,
                            )
                          )
                        ]
                      ),
                    ),
                    SizedBox(
                      child: imagesHolder.error,
                      height: sizingInformation.isMobile ? 450 : 700,
                      width: sizingInformation.isMobile ? 450 : 700,
                    ),
                  ],
                ),
              )
          );
        }
    );
  }
}
