import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
