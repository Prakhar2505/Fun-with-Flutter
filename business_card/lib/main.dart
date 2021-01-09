import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#dddddd"),
      // appBar: AppBar(
      //   backgroundColor: HexColor("#30475e"),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 500,
            child: Card(elevation: 10.0,margin: EdgeInsets.all(10.0),
              color: HexColor('#121212'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/me.jpg'))),
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Prakhar Srivastava',
                          style: TextStyle(
                              fontFamily: 'DancingScript', fontSize: 35,color: HexColor('FF0266')),
                        ),
                        Text(
                          'Data Scientist | ML Engineer',
                          style: TextStyle(fontSize: 23,color: HexColor('FF7597')),
                        ),
                        Text(''),

                        SizedBox(
                          width: 350.0,
                          height: 50.0,
                          child: Card(elevation: 5,
                            color: HexColor('262626'),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.phone,color:HexColor('#FFFFFF')),
                                Text(
                                  '7017767167, 7302191304',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#FFFFFF')),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 350.0,
                          height: 50.0,
                          child: Card(elevation: 5,
                            color: HexColor('262626'),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Icon(Icons.mail,color:HexColor('FFFFFF') ,),
                                Text(
                                  'prakharsrivastava725@gmail.com',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('FFFFFF')),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
