import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial1',
      debugShowCheckedModeBanner: false,
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
    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Oeschinen Lake Comapgroud',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              'Kandresteg, Switzerland',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Icon(Icons.star, size: 27, color: Colors.deepOrange),
        Text(
          '41',
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            Icon(Icons.call, size: 40, color: Colors.lightBlue),
            Text(
              'CALL',
              style: TextStyle(color: Colors.lightBlue),
            )
          ],
        ),
        Padding(padding: EdgeInsets.all(35.0)),
        Column(
          children: [
            Icon(Icons.near_me, size: 40, color: Colors.lightBlue),
            Text(
              'ROUTE',
              style: TextStyle(color: Colors.lightBlue),
            )
          ],
        ),
        Padding(padding: EdgeInsets.all(35.0)),
        Column(
          children: [
            Icon(Icons.share, size: 40, color: Colors.lightBlue),
            Text(
              'SHARE',
              style: TextStyle(color: Colors.lightBlue),
            )
          ],
        ),
      ],
    );
    var textSection = Container(
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        style: TextStyle(fontSize: 20),
      ),
      padding: EdgeInsets.all(20.0),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
              'https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
              height: 240,
              width: 600,
              fit: BoxFit.cover),
          Padding(padding: EdgeInsets.all(10.0)),
          titleSection,
          Padding(padding: EdgeInsets.all(15.0)),
          buttonSection,
          Padding(padding: EdgeInsets.all(20.0)),
          textSection,
        ],
      ),
    );
  }
}
