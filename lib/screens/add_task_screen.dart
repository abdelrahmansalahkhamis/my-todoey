import 'package:flutter/material.dart';
import 'package:ios/models/task.dart';
import 'package:ios/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {

  String newTaskTitle = '';

  // Function addTaskCallback;
  //
  // AddTask({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff757575),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTaskTitle = newValue;
              },
            ),
            FlatButton(
              onPressed: (){
                //addTaskCallback(newTaskTitle);
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                // Navigator.pop(context);
                Navigator.pop(context);
            },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
