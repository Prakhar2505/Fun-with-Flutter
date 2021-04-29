import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxStateToggle;
  TaskTile({this.title,this.isChecked,this.checkboxStateToggle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
