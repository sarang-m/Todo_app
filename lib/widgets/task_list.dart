import 'package:flutter/material.dart';
import 'package:todoapp/core/constants.dart';
import 'package:todoapp/core/screen_size.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      

      title: Text("This is a task",style: KTaskTextStyle),
      secondary: Text("1",style: KTaskTextStyle,),
      value: false,

    );
  }
}