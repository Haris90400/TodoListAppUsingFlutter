import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChanged;
  final String taskTitle;
  final Function checkBoxCallBack;
  final VoidCallback longPressCallBack;

  TaskTile(
      {required this.isChanged,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallBack,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChanged ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChanged,
          onChanged: (newValue) => checkBoxCallBack(newValue),
        ));
  }
}
// void checkBoxCallBack(bool newValue) {
//   // Add function body here
//   setState(() {
//     widget.isChanged = newValue;
//   });
// }
