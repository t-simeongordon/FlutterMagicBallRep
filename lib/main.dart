import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_a_photo),
          title: Text('8 Ball'),
          backgroundColor: Colors.deepPurple,
        ),
        body: EightBall(),
      ),
    ),
  );
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  var eightBall = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    eightBall = Random().nextInt(4)+1;
                  });
                },
                child: Image(
                     image: AssetImage('images/ball$EightBall.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
