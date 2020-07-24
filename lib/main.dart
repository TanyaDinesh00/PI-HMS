import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String url = "http://pihms.co.in/";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PI-HMS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
//        "/": (context) => Home(),
        "/": (context) => SafeArea(
              child: WebviewScaffold(
                url: url,
                withJavascript: true,
                withLocalStorage: true,
                withZoom: true,
                geolocationEnabled: true,
                //scrollBar: false,
              ),
            )
      },
    );
  }
}
