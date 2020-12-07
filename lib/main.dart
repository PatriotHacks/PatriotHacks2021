import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/locator.dart';
import 'package:patriot_hacks/routing/route_names.dart';
import 'package:patriot_hacks/routing/router.dart';
import 'package:patriot_hacks/services/navigation_service.dart';
import 'package:patriot_hacks/widgets/layout_template/layout_template.dart';

void main() {
    //NOTE: This needs to be enabled in flutter master channel for the # to disappear in the URL. It stopped working on the beta channel so we either have to wait or switch to master channel
    // configureApp();
  setupLocator();
  runApp(Main());
}

final GetIt getIt = GetIt.instance;

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        print(child.runtimeType);
        return LayoutTemplate(child: child);
      },
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: getIt.get<FontHolder>().paragraphFont,
          ),
          bodyText2: TextStyle(
            fontFamily: getIt.get<FontHolder>().paragraphFont,
          ),
        ).apply(
          bodyColor: getIt<ColorHolder>().patriotGreen,
          displayColor: getIt<ColorHolder>().patriotGreen,
        ),
      ),
    );
  }
}
