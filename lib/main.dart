import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/core/constants.dart';
import 'package:todoapp/core/custom_scroll_behavior.dart';
import 'package:todoapp/model/task_data.dart';
import 'package:todoapp/screens/tasks_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        builder: (context,child){
          return ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            child: child,
          );
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: TasksScreen(),
      ),
    );
  }
}
