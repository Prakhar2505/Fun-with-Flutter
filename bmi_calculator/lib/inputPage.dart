import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'iconContent.dart';
import 'constants.dart';
import 'RoundIconButton.dart';
import 'resultsPage.dart';
import 'package:bmi_calculator/BottomButton.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  var height = 180;

  var weight = 80;

  var age = 18;

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
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colour: selectedGender == Gender.Male
                          ? kReusableCardColor
                          : kInactiveCardColor,
                      cardChild: cardContent(
                          cardIcon: FontAwesomeIcons.mars, cardLabel: "MALE"),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      colour: selectedGender == Gender.Female
                          ? kReusableCardColor
                          : kInactiveCardColor,
                      cardChild: cardContent(
                        cardIcon: FontAwesomeIcons.venus,
                        cardLabel: ("FEMALE"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: kReusableCardColor,
              cardChild: Column(
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text("$height", style: kNumberTextStyle),
                      Text("cm", style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        divisions: 100,
                        // label: currentSliderValue.round().toString(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ReusableCard(
                    colour: kReusableCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          "$weight",
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(FontAwesomeIcons.minus, () {
                              setState(() {
                                weight--;
                              });
                            }, () {
                              setState(() {
                                weight -= 5;
                              });
                            }),
                            SizedBox(
                              width: 12.0,
                            ),
                            RoundIconButton(
                              FontAwesomeIcons.plus,
                              () {
                                setState(() {
                                  weight++;
                                });
                              },
                              () {
                                setState(() {
                                  weight += 5;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: kReusableCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          "$age",
                          style: kNumberTextStyle,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(FontAwesomeIcons.minus, () {
                              setState(() {
                                age--;
                              });
                            }, () {
                              setState(() {
                                age -= 5;
                              });
                            }),
                            SizedBox(
                              width: 12.0,
                            ),
                            RoundIconButton(
                              FontAwesomeIcons.plus,
                              () {
                                setState(() {
                                  age++;
                                });
                              },
                              () {
                                setState(() {
                                  age += 5;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            BottomButton("CALCULATE",(){
              Navigator.pushNamed(context, "/results");
            })
          ],
        ),
      ),
    );
  }
}
