import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxStateToggle;
  final Function deleteTasktile;
  TaskTile({this.title,this.isChecked,this.checkboxStateToggle,this.deleteTasktile});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTasktile,
      title: Text(title,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxStateToggle),
    );
  }
}

// (newValue){
// setState((){
// isChecked = newValue;
//
// });
// },
// );,
