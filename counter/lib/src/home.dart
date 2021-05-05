import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  void _decrementCounter() {
    setState(() => _counter--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: TextStyle(fontSize: 65.0, color: Colors.blue, letterSpacing: 4.0),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 35.0),
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.add_circle), onPressed: _incrementCounter, color: Colors.red[300], iconSize: 35.0),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                ),
                IconButton(icon: Icon(Icons.remove_circle), onPressed: _decrementCounter, color: Colors.red[300], iconSize: 35.0),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
