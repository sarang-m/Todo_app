import 'package:flutter/material.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/widgets/task.dart';

class TaskListWidget extends StatefulWidget {

  final List<Task> task;
  TaskListWidget({this.task});

  @override
  _TaskListWidgetState createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskWidget(
        taskTitle: widget.task[index].taskName,
        isChecked: widget.task[index].isDone,
        serialNo: index+1,
        checkBoxCallback:(bool checkBoxCondition){
          setState(() {
            widget.task[index].toggleDone();
          });
        });},
    itemCount: widget.task.length,);
  }
}