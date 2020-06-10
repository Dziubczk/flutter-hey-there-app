import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hey There App'),
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
  Color _colorBG = Color.fromARGB(255, 0, 0, 0);
  Color _colorText = Color.fromARGB(255, 255, 255, 255);

  void _changeColor() {
    setState(() {
      var _random = new Random();
      int max = 255;
      int r = _random.nextInt(max);
      int g = _random.nextInt(max);
      int b = _random.nextInt(max);
      _colorBG = Color.fromARGB(max, r, g, b);
      _colorText = Color.fromARGB(max, max - r, max - g, max - b);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colorBG,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: InkWell(
        onTap: () {
          setState(() {
            _changeColor();
          });
        },
        child: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              fontSize: 40,
              color: _colorText,
            ),
          ),
        ),
      ),
    );
  }
}
