import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoey/presentation/models/todo.dart';
import 'package:flutter_todoey/presentation/todo_cubit.dart';
import 'package:flutter_todoey/presentation/widgets/todos_tile.dart';

class TodosList extends StatelessWidget {
  final List<Todo> todoListState;

  const TodosList({super.key, required this.todoListState});

  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodosCubit>();

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: ListView.builder(
            itemCount: todoListState.length,
            itemBuilder: (context, index) {
              final todo = todoListState[index];
              return TodosTile(
                taskTitle: todo.name,
                isChecked: todo.isDone,
                checkboxCallback: (checkboxState) {
                  todoCubit.toggleCompletion(todo);
                },
                longPressCallback: () {
                  todoCubit.deleteTodo(todo);
                },
              );
            }),
      ),
    );
  }
}
