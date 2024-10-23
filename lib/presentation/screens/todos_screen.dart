import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoey/presentation/models/todo.dart';
import 'package:flutter_todoey/presentation/todo_cubit.dart';
import 'package:flutter_todoey/presentation/widgets/todos_screen_fab.dart';
import 'package:flutter_todoey/presentation/widgets/todos_header.dart';
import 'package:flutter_todoey/presentation/widgets/todos_list.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: const TodosScreenFloatingActionButton(),
        body: BlocBuilder<TodosCubit, List<Todo>>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TodosHeader(todoListCount: state.length),
                TodosList(todoListState: state)
              ],
            );
          },
        ));
  }
}
