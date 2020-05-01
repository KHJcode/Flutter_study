import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Well Made')
        ),
        body:Center(child:Image(image: NetworkImage(
          "https://images.velog.io/images/khjcode/profile/2a0e3009-6c91-4349-b416-4453533d7560/social.png"
        ))),
      ),
    );
  }
}