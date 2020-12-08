import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/locator.dart';
import 'package:patriot_hacks/routing/route_names.dart';
import 'package:patriot_hacks/routing/router.dart';
import 'package:patriot_hacks/services/navigation_service.dart';
import 'package:patriot_hacks/widgets/layout_template/layout_template.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';


void main() {
    //NOTE: This needs to be enabled in flutter master channel for the # to disappear in the URL. It stopped working on the beta channel so we either have to wait or switch to master channel
  configureApp();
  setupLocator();
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => LayoutTemplate(child: child),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: locator<FontHolder>().paragraphFont,
          ),
          bodyText2: TextStyle(
            fontFamily: locator<FontHolder>().paragraphFont,
          ),
        ).apply(
          bodyColor: locator<ColorHolder>().patriotGreen,
          displayColor: locator<ColorHolder>().patriotGreen,
        ),
      ),
    );
  }
}
