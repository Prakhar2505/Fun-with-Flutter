import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'iconContent.dart';

const containerHeight = 70.0;
const reusableCardColor = Color(0xff1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {Male,Female}

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender;

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
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                      colour: selectedGender == Gender.Male ? reusableCardColor : inactiveCardColor,
                      cardChild: cardContent(cardIcon:FontAwesomeIcons.mars,cardLabel:"MALE"),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      colour: selectedGender == Gender.Female ? reusableCardColor : inactiveCardColor,
                      cardChild: cardContent(cardIcon: FontAwesomeIcons.venus,cardLabel: ("FEMALE"),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: reusableCardColor,
            )),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ReusableCard(
                    colour: reusableCardColor,
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: reusableCardColor,
                  )),
                ],
              ),
            ),
            Container(
                color: bottomContainerColor,
                height: containerHeight,
                margin: EdgeInsets.only(top: 15.0))
          ],
        ),
      ),
    );
  }
}
