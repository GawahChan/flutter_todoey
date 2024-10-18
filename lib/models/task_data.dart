import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Clean Flat"),
    Task(name: "Buy Milk"),
    Task(name: "Buy Bread"),
  ];

  int get taskCount {
    return tasks.length;
  }
}
