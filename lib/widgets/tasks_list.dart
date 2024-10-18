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
              return TaskTile(
                  taskTitle: taskData.tasks[index].name,
                  isChecked: taskData.tasks[index].isDone,
                  checkboxCallback: (checkboxState) {});
            });
      },
    );
  }
}
