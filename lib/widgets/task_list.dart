import 'package:flutter/material.dart';
import 'package:todoapp/core/constants.dart';
import 'package:todoapp/core/screen_size.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(


      title: Text("This is a task",style: KTaskTextStyle),
      secondary: Text("1",style: KTaskTextStyle,),
      value: _isChecked,
      onChanged: (bool newValue){
        setState(() {
          _isChecked = newValue;
        });
      }
    );
  }
}