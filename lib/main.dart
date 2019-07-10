import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(
              child: Text('Magic 8 Ball'),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Column(children: <Widget>[
            Container(child:Text('Think of a question and press the ball.',style: TextStyle(color: Colors.white),),
            margin: EdgeInsetsDirectional.only(top: 20.0),),

            Expanded(child:MagicBall()),
          ],),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int magicNumber=1;
  void changeState(){
    setState((){
      magicNumber=Random().nextInt(5)+1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          changeState();
        },
        child: Image.asset('images/ball$magicNumber.png'),
      ),
    );
  }
}
