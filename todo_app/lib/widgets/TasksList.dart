import 'package:flutter/material.dart';
import 'package:todo_app/widgets/TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
                title: taskData.tasks[index].name,
                isChecked:taskData.tasks[index].isDone,
                checkboxStateToggle: (checkboxState) => taskData.toggleTask(taskData.tasks[index]),
                deleteTasktile: () => taskData.deleteTask(taskData.tasks[index]),
                );
          },
        );
      },
    );
  }
}
