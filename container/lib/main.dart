import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: FirstPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
        ),
      ),
    );
  }
}

class MyPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(width: 30.0),
              Container(
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(width: 30.0),
              Container(
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ));
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Go to the First page'),
            onPressed: () {
              Navigator.push(context2,
                MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Go to the Second page'),
            onPressed: () {
              Navigator.pop(ctx);
            },
          ),
        ));
  }
}
