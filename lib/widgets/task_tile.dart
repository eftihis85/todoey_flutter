import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) onChecked;
  final Function() onLongPress;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.onChecked,
      required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChecked,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final void Function(bool?) toggleState;

//   const TaskCheckbox(
//       {super.key, required this.checkboxState, required this.toggleState});

//   @override
//   Widget build(BuildContext context) => 
      
// }
