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
//              appBar: AppBar(
//                title: Text("WebView"),
//              ),
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
//
//class Home extends StatefulWidget {
//  @override
//  HomeState createState() => HomeState();
//}
//
//class HomeState extends State<Home> {
//  final webView = FlutterWebviewPlugin();
//  var controller = TextEditingController(text: url);
//
//  @override
//  void initState() {
//    super.initState();
//
//    webView.close();
//    controller.addListener(() {
//      url = controller.text;
//    });
//  }
//
//  @override
//  void dispose() {
//    webView.dispose();
//    controller.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text("WebView"),
//        ),
//        body: Center(
//          child: Column(
//            children: <Widget>[
//              Container(
//                padding: EdgeInsets.all(10.0),
//                child: TextField(
//                  controller: controller,
//                ),
//              ),
//              RaisedButton(
//                child: Text("Open Webview"),
//                onPressed: () {
//                  Navigator.of(context).pushNamed("/webview");
//                },
//              )
//            ],
//          ),
//        ));
//  }
//}
