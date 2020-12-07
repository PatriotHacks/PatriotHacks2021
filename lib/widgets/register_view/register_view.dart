// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/widgets/body/body.dart';

final GetIt getIt = GetIt.instance;

class RegisterView extends StatelessWidget {

  final _registerFormSrc = 'https://form.typeform.com/to/RvTX5VYm?typeform-medium=embed-snippet';

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.vertical,
        children: [Expanded(
        child: Body(
          child: Center(
            child: Column(
              children: [
                IframeScreen(800, 600, _registerFormSrc)
              ],
            ),
          ),
        ),
      ),
      ]
    );
  }
}

// ignore: must_be_immutable
class IframeScreen extends StatefulWidget {
  double w;
  double h;
  String src;

  IframeScreen(double _w, double _h, String _src){
    this.w = _w;
    this.h = _h;
    this.src = _src;
  }

  @override
  _IframeScreenState createState() => _IframeScreenState(w, h, src);
}


class _IframeScreenState extends State<IframeScreen> {
  Widget _iframeWidget;
  final IFrameElement _iframeElement = IFrameElement();
  double _width;
  double _height;
  String _source;

  _IframeScreenState(double _w, double _h, String _src){
    _width = _w;
    _height = _h;
    _source = _src;
  }

  @override
  void initState() {
    super.initState();
    _iframeElement.src = _source;
    _iframeElement.style.border = 'none';

    // ignore: undefined_prefixed_name
//    ui.platformViewRegistry.registerViewFactory(
//      'iframeElement',
//          (int viewId) => _iframeElement,
//    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: _iframeWidget,
    );
  }
}
