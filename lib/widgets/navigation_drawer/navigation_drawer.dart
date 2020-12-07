import 'package:flutter/material.dart';
import 'package:patriot_hacks/routing/route_names.dart';
import 'package:patriot_hacks/widgets/navigation_drawer/drawer_item.dart';
import 'package:patriot_hacks/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(32, 34, 37, 1),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 16),
          ]
        ),
        child: ListView(
          children: [
            NavigationDrawerHeader(),
            SizedBox(height: 15,),
            DrawerItem('Home', HomeRoute),
            DrawerItem('Register', RegisterRoute),
            DrawerItem('Sponsors', SponsorsRoute),
            DrawerItem('Discord', DiscordRoute),
            DrawerItem('FAQ', FAQRoute),
            DrawerItem('Contact us', ContactUsRoute),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
