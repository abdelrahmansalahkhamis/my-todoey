import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   final bool isChecked;
//   final String taskTitle;
//   final Function (bool value) chekboxCallback;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//           'This is a task',
//         style: TextStyle(
//           decoration: isChecked ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: Checkbox(
//         activeColor: Colors.lightBlueAccent,
//         value: isChecked,
//         onChanged: (bool? value) {
//           // setState(() {
//           //   checkBoxState = value;
//           // });
//         },
//       ),
//     );
//   }
// }

// class TaskTile extends StatelessWidget {
//   final bool isChecked;
//   final String taskTitle;
//   final Function checkboxCallback;
//   final Function longPressCallback;
//
//   TaskTile(
//       {this.isChecked,
//         this.taskTitle,
//         this.checkboxCallback,
//         this.longPressCallback});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onLongPress: longPressCallback,
//       title: Text(
//         taskTitle,
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: Checkbox(
//         activeColor: Colors.lightBlueAccent,
//         value: isChecked,
//         onChanged: checkboxCallback,
//       ),
//     );
//   }
// }

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool value) chekboxCallback;
  final VoidCallback longPressedCallback;

  TaskTile({this.isChecked = false, this.taskTitle = '', required this.chekboxCallback, required this.longPressedCallback});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressedCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (bool? value) {
          chekboxCallback(value!);
          print('changed !!!!!');
        },
      ),
    );
  }
}



// class TaskCheckBox extends StatelessWidget {
//
//   final bool? checkBoxState;
//
//   TaskCheckBox({this.checkBoxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkBoxState,
//       onChanged: (bool? value) {
//         // setState(() {
//         //   checkBoxState = value;
//         // });
//       },
//     );
//   }
// }


// class TaskTile extends StatefulWidget {
//   const TaskTile({Key? key}) : super(key: key);
//
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool? isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//           'This is a task',
//         style: TextStyle(
//           decoration: isChecked! ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: Checkbox(
//         value: isChecked,
//         onChanged: (bool? value) {
//           setState(() {
//             isChecked = value;
//         });
//       },
//     ),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//
//   final bool? checkBoxState;
//
//   TaskCheckBox({this.checkBoxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       onChanged: (bool? value) {
//         // setState(() {
//         //   checkBoxState = value;
//         // });
//       },
//     );
//   }
// }


