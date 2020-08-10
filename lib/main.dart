import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/homePage.dart';
import 'pages/auth.dart';

void main() {
  runApp(MyApp());

  debugPaintBaselinesEnabled = false;
  debugPaintSizeEnabled = false;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: AuthPage(),
    );
  }
}
