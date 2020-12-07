import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/body/body.dart';

final GetIt getIt = GetIt.instance;

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      height: 200,
      child: Center(
        child: Text('register view', style: TextStyle(color: getIt<ColorHolder>().patriotGold),),
      ),
    );
  }
}
