import 'package:bmi_calculator/resultsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inputPage.dart';
import 'resultsPage.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>InputPage(),
        '/results':(context)=>ResultsPage()
      },
      initialRoute: '/',
    );
  }
}

