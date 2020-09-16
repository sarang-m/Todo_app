import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoapp/model/task.dart';


class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(taskName: "first task"),
    Task(taskName: "second task"),
    Task(taskName: "3rd task"),
    Task(taskName: "4th task"),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskLength{
    return _tasks.length;
  }

  void addTask(String newTask){
    final task = Task(taskName: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}