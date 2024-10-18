import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:flutter_todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList({super.key, required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
