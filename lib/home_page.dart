import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, result = 0;

  final TextEditingController text1 = TextEditingController(text: '0');
  final TextEditingController text2 = TextEditingController(text: '0');

  void doAddition() {
    setState(() {
      try {
        num1 = double.parse(text1.text);
        num2 = double.parse(text2.text);
      } catch (e) {
        return;
      }
      result = num1 + num2;
    });
  }

  void doMultiplication() {
    setState(() {
      try {
        num1 = double.parse(text1.text);
        num2 = double.parse(text2.text);
      } catch (e) {
        return;
      }
      result = num1 * num2;
    });
  }

  void doSubtraction() {
    setState(() {
      try {
        num1 = double.parse(text1.text);
        num2 = double.parse(text2.text);
      } catch (e) {
        return;
      }
      result = num1 - num2;
    });
  }

  void doDivision() {
    setState(() {
      try {
        num1 = double.parse(text1.text);
        num2 = double.parse(text2.text);
      } catch (e) {
        return;
      }
      result = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Output: $result',
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter number 1'),
                controller: text1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter number 2'),
                controller: text2,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('+'),
                    color: Colors.greenAccent,
                    onPressed: () {
                      doAddition();
                    },
                  ),
                  RaisedButton(
                    child: Text('-'),
                    color: Colors.greenAccent,
                    onPressed: () {
                      doSubtraction();
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('*'),
                    color: Colors.greenAccent,
                    onPressed: () {
                      doMultiplication();
                    },
                  ),
                  RaisedButton(
                    child: Text('/'),
                    color: Colors.greenAccent,
                    onPressed: () {
                      doDivision();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
