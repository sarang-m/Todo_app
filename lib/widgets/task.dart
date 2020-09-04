import 'package:flutter/material.dart';
import 'package:todoapp/core/constants.dart';

class TaskWidget extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final int serialNo;

  TaskWidget({this.taskTitle,this.isChecked,this.checkBoxCallback,this.serialNo});


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(

      title: Text("$taskTitle",
          style: isChecked? KTaskTextStyle.copyWith(
              decoration: TextDecoration.lineThrough):KTaskTextStyle),
      activeColor: Colors.lightBlueAccent,
      secondary: Text("$serialNo",style: KTaskTextStyle,),
      value: isChecked,
      onChanged: checkBoxCallback
    );
  }
}



