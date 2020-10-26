import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  DicePage createState() => DicePage();
}

class DicePage extends State<StatefulWidget> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  diceNumber(){
       setState(() {
         leftDiceNumber = Random().nextInt(6) + 1;
         rightDiceNumber = Random().nextInt(6) + 1;
       });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                    diceNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                 diceNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          )
        ],
      ),
    );
  }
}
