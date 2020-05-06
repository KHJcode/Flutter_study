import 'package:flutter/material.dart';
import 'package:navigator_plus/ScreenA.dart';
import 'package:navigator_plus/ScreenB.dart';
import 'package:navigator_plus/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScrrenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}
