import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var titleSection = Row(children: <Widget>[
      Column(children: <Widget>[
        Text('Bridge of London'),
        Text('Beautiful view'),
      ],),
      Icon(Icons.star),
      Text('41'),
    ],);
    var buttonSection = Row(children: <Widget>[
      Column(children: [Icon(Icons.call), Text('CALL')],),
      Column(children: [Icon(Icons.near_me), Text('ROUTE')],),
      Column(children: [Icon(Icons.share), Text('SHARE')],),
    ],);
    var textSection = Text('');
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network('https://images.unsplash.com/photo-1533204515132-035bc8d4128c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
            height: 240, width: 600, fit: BoxFit.cover),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}
