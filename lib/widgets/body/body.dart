import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:patriot_hacks/widgets/centered_view/centered_view.dart';
import 'package:patriot_hacks/widgets/footer/footer.dart';
import 'package:patriot_hacks/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Body extends StatefulWidget {
  final Widget child;
  final double height;

  Body({Key key, this.height, @required this.child}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => FooterView(
        children: [
          CenteredView(child: Container(padding: EdgeInsets.all(30), child: NavigationBar())),
          CenteredView(
            child: Container(width: double.infinity, height: widget.height, child: widget.child),
          )
        ],
        footer: Footer(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0),
          child: CenteredView(
            child: Container(
              padding: EdgeInsets.all(30.0),
              height: sizingInformation.isDesktop ? 259 : 521,
              child: CustomFooter(),
            ),
          ),
        ),
        flex: 10,
      ),
    );
  }
}
