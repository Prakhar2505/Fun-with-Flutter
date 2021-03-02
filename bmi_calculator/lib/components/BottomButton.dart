import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {

  BottomButton(this.title,this.onTap);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          color: kBottomContainerColor,
          height: kContainerHeight,
          margin: EdgeInsets.only(top: 15.0),
          child: Center(child: Text("$title",style:kLargeTextButtonStyle))
      ),
      onTap: onTap,
    );
  }
}
