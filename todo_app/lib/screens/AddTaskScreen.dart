import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              "Add Task",
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 35.0),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (value) {
                taskTitle = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 50),
              child: ElevatedButton(
                  onPressed: () {
                    Provider.of<TaskData>(context,listen: false).addTask(taskTitle);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      onPrimary: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

// RawKeyboardListener(
// focusNode: FocusNode(),
// onKey: (event) {
// print(event);
// if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
// Provider.of<TaskData>(context,listen: false).addTask(taskTitle);
// Navigator.pop(context);
// }
// },