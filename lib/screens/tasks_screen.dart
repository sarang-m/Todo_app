import 'package:flutter/material.dart';
import 'package:todoapp/core/constants.dart';
import 'package:todoapp/core/screen_size.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/screens/add_task_screen.dart';
import 'package:todoapp/widgets/task_list.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {


  List<Task> tasks = [
    Task(taskName: "first task"),
    Task(taskName: "second task"),
    Task(taskName: "3rd task"),
    Task(taskName: "4th task"),
  ];


  @override
  Widget build(BuildContext context) {

    int takNumber = tasks.length;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){
            showModalBottomSheet(context: context,
                builder: (context) => AddTaskScreen(
                  addTaskCallback: (newTaskTitle){
                    setState(() {
                      tasks.add(Task(taskName: newTaskTitle));
                    });
                  },));
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 30,
                  left: SizeConfig.safeBlockHorizontal*10,
                  right: SizeConfig.safeBlockHorizontal*10,
                  bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.list,
                        color: Colors.lightBlueAccent,
                      size: SizeConfig.safeBlockVertical*9,),),
                  SizedBox(height: SizeConfig.safeBlockVertical*3),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "TODO\n", style: KHeadingTextStyle),
                      TextSpan(
                        text: "$takNumber tasks",
                        style: KHeadingTextStyle.copyWith(
                            fontSize: SizeConfig.safeBlockHorizontal * 4,
                            fontWeight: FontWeight.w600),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal*8,
                right: SizeConfig.safeBlockHorizontal*8,
                //top: SizeConfig.safeBlockVertical*6
                  ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(20),
                  topRight: Radius.circular(20)),
                  color: Colors.white
                ),
                child: TaskListWidget(task: tasks,),
              ),
            )
          ],
        ),
      ),
    );
  }
}




