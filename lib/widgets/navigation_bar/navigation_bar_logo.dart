import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';

class NavigationBarLogo extends StatelessWidget {

  ImageHolder imageHolder = GetIt.instance.get<ImageHolder>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: imageHolder.patriotLogo,

    );
  }
}
