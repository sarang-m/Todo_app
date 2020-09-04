import 'package:flutter/cupertino.dart';

class Task{
  final taskName;
  bool isDone;
  Task({this.taskName,this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }
}