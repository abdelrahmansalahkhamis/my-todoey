import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:ios/models/task.dart';
import 'package:provider/provider.dart';
import 'package:ios/models/task_data.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
          return TaskTile(
            // taskTitle: widget.tasks[index].name,
            // isChecked: widget.tasks[index].isDone,
            taskTitle: task.name,
            isChecked: task.isDone,
            chekboxCallback: (checkboxState) {
              taskData.updateTask(task);
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            },
            longPressedCallback: (){
              taskData.removeTask(task);
            },
          );
        },
          //itemCount: widget.tasks.length,
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}


// class TasksList extends StatelessWidget {
//
//   List<Task> tasks = [
//     Task(name: 'Buy milk'),
//     Task(name: 'Buy eggs'),
//     Task(name: 'Buy bread'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     // return ListView(
//     //   children: <Widget>[
//     //     TaskTile(
//     //       taskTitle: tasks[0].name!,
//     //       isChecked: tasks[0].isDone!,
//     //     ),
//     //     TaskTile(
//     //       taskTitle: tasks[1].name!,
//     //       isChecked: tasks[1].isDone!,
//     //     ),
//     //     TaskTile(
//     //       taskTitle: tasks[2].name!,
//     //       isChecked: tasks[2].isDone!,
//     //     ),
//     //   ],
//     // );
//   }
// }
