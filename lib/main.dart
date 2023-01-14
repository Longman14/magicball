import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Text('Ask Me Anything', style: TextStyle(fontWeight: FontWeight.bold),),
          )         ,
          body:
          MagicBall()
          ,
        ),

  ),);


}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);



  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 1;
  void changeAnswer(){
    answer = Random().nextInt(4) +1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: TextButton(
                child: Image.asset('images/ball$answer.png'),
            onPressed: (){
              setState(() {
                changeAnswer();
              });
            },
          ))
        ],
      ),
    );
  }
}


