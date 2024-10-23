import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoey/presentation/models/todo.dart';
import 'package:flutter_todoey/presentation/todo_cubit.dart';
import 'package:flutter_todoey/presentation/widgets/todo_tile.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todoListState;

  const TodoList({super.key, required this.todoListState});

  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodosCubit>();

    return ListView.builder(
        itemCount: todoListState.length,
        itemBuilder: (context, index) {
          final todo = todoListState[index];
          return TodoTile(
            taskTitle: todo.name,
            isChecked: todo.isDone,
            checkboxCallback: (checkboxState) {
              todoCubit.toggleCompletion(todo);
            },
            longPressCallback: () {
              todoCubit.deleteTodo(todo);
            },
          );
        });
  }
}
