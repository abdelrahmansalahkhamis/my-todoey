import 'package:flutter/material.dart';
import 'package:ios/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:ios/models/task.dart';
import 'package:provider/provider.dart';
import 'package:ios/models/task_data.dart';

class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
            Icons.add
        ),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTask());
        },
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Container(
              padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )
                ),
                child: TasksList(),
              ),
            )
          ]
      ),
    );
  }
}


// class TasksScreen extends StatelessWidget {
//   const TasksScreen({Key? key}) : super(key: key);
//
//   List<Task> tasks = [
//     Task(name: 'Buy milk'),
//     Task(name: 'Buy eggs'),
//     Task(name: 'Buy bread'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.lightBlueAccent,
//         child: Icon(
//           Icons.add
//         ),
//         onPressed: (){
//           showModalBottomSheet(context: context, builder: (context) => AddTask());
//         },
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget> [
//           Container(
//             padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 CircleAvatar(
//                   child: Icon(
//                     Icons.list,
//                     size: 30.0,
//                     color: Colors.lightBlueAccent,
//                   ),
//                   backgroundColor: Colors.white,
//                   radius: 30.0,
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Text(
//                   'Todoey',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 50.0,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 Text(
//                   '12 Tasks',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12.0,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20.0),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20.0),
//                     topRight: Radius.circular(20.0),
//                   )
//                 ),
//                 child: TasksList(),
//               ),
//           )
//         ]
//       ),
//     );
//   }
// }