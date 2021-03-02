
import 'package:bmi_calculator/calculatorBrain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/BottomButton.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage(this.calc);
  final CalculatorBrain calc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff11163A),
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Container(
        color: Color(0xff0A0F33),
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Center(
                child: Text(
              "YOUR RESULT",
              style: kTitleStyle,
            )),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kReusableCardColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      calc.getResult(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      calc.BMICalculator(),
                      style: kBMITextStyle,
                    ),
                    Text(
                      calc.getInterpretations(),
                      style: kBMIStatsTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton("RECALCULATE", () {
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}
