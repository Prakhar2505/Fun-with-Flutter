import 'package:bmi_calculator/BottomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("UNDERWEIGHT",style: kResultTextStyle,),
                    Text("30.4",style: kBMITextStyle,),
                    Text("Pay more attention on yourself",style: kBMIStatsTextStyle,textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
            BottomButton("RECALCULATE", (){
              Navigator.pushNamed(context, "/");
            })
          ],
        ),
      ),
    );
  }
}
