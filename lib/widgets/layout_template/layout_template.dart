import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/utils/holder.dart';
import 'package:patriot_hacks/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatefulWidget {

  final Widget child;

  const LayoutTemplate({Key key, @required this.child}) : super(key: key);

  @override
  _LayoutTemplateState createState() => _LayoutTemplateState();
}

class _LayoutTemplateState extends State<LayoutTemplate>
    with TickerProviderStateMixin {
  Animation _animate;
  AnimationController _animationController;
  final getIt = GetIt.instance;
  final ColorHolder _colorHolder = new ColorHolder();
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 750), //TODO: Set animation time
      vsync: this,
    );
    _animate = Tween(begin: 0.0, end: 1.0).animate(new CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutExpo));
    _animateMethod();
  }

  void _animateMethod() async {
    await Future.delayed(Duration(
        milliseconds:
            3000)); //TODO: Set how long to wait before animation starts
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animate,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          backgroundColor: _colorHolder.patriotBlack,
          drawer: PointerInterceptor(
            child: sizingInformation.isTablet || sizingInformation.isMobile
                ? NavigationDrawer()
                : null,
          ),
          body: widget.child,
        ),
      ),
    );
  }
}
