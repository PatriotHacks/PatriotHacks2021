import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // var textAlignment = sizingInformation.isDesktop || sizingInformation.isTablet ? TextAlign.left : TextAlign.center;
        var textAlignment = TextAlign.center;
        double titleSize = sizingInformation.isMobile ? 50 : 80;
        // double descriptionSize = sizingInformation.isMobile ? 16 : 21;
        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'PatriotHacks',
                  style:
                    TextStyle(fontWeight: FontWeight.w800, fontSize: titleSize,),
                    textAlign: textAlignment
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
