import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything ...'),
            ),
            backgroundColor: Colors.blue[400],
          ),
          body: EightBallPage(),
        ),
      ),
    );

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int eightBallAnswer = 1;

  void changeAnswer() {
    setState(() {
      eightBallAnswer = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeAnswer();
              },
              child: Image.asset('images/ball$eightBallAnswer.png'),
            ),
          ),
        ],
      ),
    );
  }
}