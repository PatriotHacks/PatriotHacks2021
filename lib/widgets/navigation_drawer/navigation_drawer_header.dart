import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';

GetIt getIt = GetIt.instance;

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 100, child: getIt<ImageHolder>().patriotLogo,),
        ],
      ),
    );
  }
}
