import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: "Hey Prakhar")];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void toggleTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
