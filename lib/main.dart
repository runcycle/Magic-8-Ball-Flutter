import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything ...'),
            ),
            backgroundColor: Colors.blue[200],
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
    eightballAnswer = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    
  }
}