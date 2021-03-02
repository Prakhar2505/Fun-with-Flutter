import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon,this.onClick,this.onLongPress);
  final IconData icon;
  final Function onClick;
  final Function onLongPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onClick,
        onLongPress: onLongPress,
        constraints: BoxConstraints.tightFor(width:56.0,height:56.0),
        elevation: 6.0,
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        child:Icon(icon,color: Colors.white,)
    );
  }
}
