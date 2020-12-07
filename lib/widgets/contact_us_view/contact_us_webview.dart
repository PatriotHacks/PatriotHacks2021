// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';

class ContactUsWebView extends StatefulWidget {
  @override
  _ContactUsWebViewState createState() => _ContactUsWebViewState();
}

class _ContactUsWebViewState extends State<ContactUsWebView> {
  Widget _iframeWidget;

  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    super.initState();

    _iframeElement.height = '500';
    _iframeElement.width = '500';

    _iframeElement.src = 'https://www.youtube.com/embed/bYQJp8XQd6U';
    _iframeElement.style.border = 'none';
    //
    // ignore: undefined_prefixed_name
    //
    // ui.platformViewRegistry.registerViewFactory(
    //   'iframeElement',
    //       (int viewId) => _iframeElement,
    // );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
