import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
                backgroundColor: Colors.blue.shade800,
                title: Center(
                  child: Text(
                    'Ask Me Anything!',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
            body: Center(child: MagicBall())),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answerNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          setState(() {
            answerNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$answerNumber.png'),
      ),
    );
  }
}
