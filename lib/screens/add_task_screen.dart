import 'package:flutter/material.dart';
import 'package:todoapp/core/screen_size.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Add task",style: TextStyle(fontSize: 30,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w600),),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                      width: 3,color: Colors.lightBlueAccent))
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: SizedBox(
                  height: SizeConfig.safeBlockVertical*6,
                  width: double.infinity,
                  child: FlatButton(
                    color: Colors.lightBlueAccent,
                    child: Text("Add",style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
