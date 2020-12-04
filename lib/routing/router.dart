import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:patriot_hacks/routing/route_names.dart';
import 'package:patriot_hacks/widgets/contact_us_view/contact_us_view.dart';
import 'package:patriot_hacks/widgets/discord_view/discord_view.dart';
import 'package:patriot_hacks/widgets/error_view/error_view.dart';
import 'package:patriot_hacks/widgets/faq_view/faq_view.dart';
import 'package:patriot_hacks/widgets/home_view/home_view.dart';
import 'package:patriot_hacks/widgets/register_view/register_view.dart';
import 'package:patriot_hacks/widgets/sponsors_view/sponsors_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case RegisterRoute:
      return _getPageRoute(RegisterView(), settings);
    case SponsorsRoute:
      return _getPageRoute(SponsorsView(), settings);
    case DiscordRoute:
      return _getPageRoute(DiscordView(), settings);
    case FAQRoute:
      return _getPageRoute(FAQView(), settings);
    case ContactUsRoute:
      return _getPageRoute(ContactUsView(), settings);
    default:
      return _getPageRoute(ErrorView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, settings: settings);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final RouteSettings settings;

  _FadeRoute({this.child, this.settings}) : super (
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation
          ) => child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child
        ) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
    settings: settings,
  );
}