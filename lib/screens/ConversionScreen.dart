
import 'package:flutter/material.dart';


class ConversionScreen extends StatefulWidget {
  @override
  _ConversionScreenState createState() => _ConversionScreenState();
}

class _ConversionScreenState extends State<ConversionScreen> {
  double _number1;
  double _answer = 0;
  double _number2 = 0.6124;

  _kilometers() {
    setState(() {
      _answer = _number1 / _number2;
    });
  }

  _miles() {
    setState(() {
      _answer = _number1 * _number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversion Page"),
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
                  _number1 = double.parse(value);
                },),
            ),

            Text('Converted unit: $_answer'),

            RaisedButton(
                onPressed: _kilometers,
                child: Text('Convert to kilometers')
            ),
            RaisedButton(
                onPressed: _miles,
                child: Text('Convert to miles')
            )
          ],
        ),
        ),

    );
  }

}