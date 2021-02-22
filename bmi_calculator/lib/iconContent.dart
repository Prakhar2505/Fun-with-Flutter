import 'package:flutter/material.dart';


const cardTextColor = Color(0xFF8D8E98);
const labelTextStyle = TextStyle(fontSize: 25.0,color: cardTextColor);

class cardContent extends StatelessWidget {
  final IconData cardIcon ;
  final String cardLabel;
  cardContent({@required this.cardIcon,@required this.cardLabel});
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
        Text(cardLabel,style: labelTextStyle)
      ],
    );
  }
}