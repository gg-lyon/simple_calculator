import 'dart:math';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _number1;
  int _number2;
  int _sum = 0;

  _addition() {
    setState(() {
      _sum = _number1 + _number2;
    });
  }

  _subtract() {
    setState(() {
      _sum = _number1 - _number2;
    });
  }
  _multiply() {
    setState(() {
      _sum = _number1 * _number2;
    });
  }
  _divide() {
    setState(() {
      _sum = _number1 ~/ _number2;
    });
  }

  _power() {
    setState(() {
      _sum = pow(_number1, _number2);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(        //alt + enter shortcut to wrap
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter first number",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)))
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _number1 = int.parse(value);
              },),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter second number",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)))
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _number2 = int.parse(value);
              },),
            ),
            Text('Sum: $_sum'),

            RaisedButton(
                onPressed: _addition,
                child: Text('+')
            ),
            RaisedButton(
                onPressed: _subtract,
                child: Text('-')
            ),
            RaisedButton(
                onPressed: _multiply,
                child: Text('*')
            ),
            RaisedButton(
                onPressed: _divide,
                child: Text('/')
            ),
            RaisedButton(
                onPressed: _power,
                child: Text('^')
            )
          ],
        ),
      ),
    );
  }
}
