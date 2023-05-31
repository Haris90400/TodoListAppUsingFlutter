import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChanged: taskData.tasks[index]?.isDone ?? false,
            taskTitle: taskData.tasks[index]?.name ?? '',
            checkBoxCallBack: (bool newValue) {
              taskData.updateTask(taskData.tasks[index]);
            },
            longPressCallBack: () {
              taskData.deleteTask(taskData.tasks[index]);
              print("Delete action");
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
