import 'package:flutter/material.dart';
import 'package:todoapp/core/constants.dart';
import 'package:todoapp/core/custom_scroll_behavior.dart';
import 'package:todoapp/screens/tasks_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,child){
        return ScrollConfiguration(
          behavior: CustomScrollBehavior(),
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: KBackgroundColor),
      home: TasksScreen(),
    );
  }
}
