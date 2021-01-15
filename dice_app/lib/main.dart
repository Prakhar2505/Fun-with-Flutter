import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: Dice()));
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var leftDice = 1;
  var rightDice = 1;
  Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FFA90A'),
      appBar: AppBar(
        title: Center(
          child: Text("Diceee"),
        ),
        backgroundColor: HexColor('#131313'),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[SizedBox(height: 70.0,),
            Text(
              'Test your Luck',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 35.0,
                color: HexColor('#DB3A34'),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(
                        () {
                          leftDice = random.nextInt(6) + 1;
                        },
                      );
                    },
                    // mouseCursor:,
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset("images/dice$leftDice.png"),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(
                        () {
                          rightDice = random.nextInt(6) + 1;
                        },
                      );
                    },
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset("images/dice$rightDice.png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
