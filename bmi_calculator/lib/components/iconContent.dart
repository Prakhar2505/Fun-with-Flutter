import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class CardContent extends StatelessWidget {
  final IconData cardIcon ;
  final String cardLabel;
  CardContent({@required this.cardIcon,@required this.cardLabel});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
          color: Color(0xFFFFFFFF),
        ),
        SizedBox(height: 15.0,),
        Text(cardLabel,style: kLabelTextStyle)
      ],
    );
  }
}