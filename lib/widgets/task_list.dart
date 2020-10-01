import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/task_data.dart';
import 'package:todoapp/widgets/task.dart';

class TaskListWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context, index){

          return TaskWidget(
              taskTitle: taskData.tasks[index].taskName,
              isChecked: taskData.tasks[index].isDone,
              deleteCallback: (){
                taskData.deleteTask(taskData.tasks[index]);
              },
              checkBoxCallback:(bool checkBoxCondition){
                taskData.updateTask(taskData.tasks[index]);
              },);},
          itemCount: taskData.tasks.length,);
      }
    );
  }
}

