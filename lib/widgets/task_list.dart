import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

import 'task_tile.dart';

import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  // late List<Task> tasks = Provider.of<TaskData>(context).tasks;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              onChecked: ((v) {
                // setState(() {
                //   taskData.tasks[index].toggleDone();
                // });
                taskData.updateTask(task);
              }),
              onLongPress: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
