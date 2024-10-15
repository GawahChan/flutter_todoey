import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:flutter_todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Clean Flat"),
    Task(name: "Buy Milk"),
    Task(name: "Buy Bread", isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
