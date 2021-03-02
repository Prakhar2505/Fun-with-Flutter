import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/inputPage.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/':(context)=>InputPage(),
      //   '/results':(context)=>ResultsPage()
      // },
      // initialRoute: '/',
      home: InputPage(),
    );
  }
}

