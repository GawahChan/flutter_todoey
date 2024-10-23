import 'package:flutter/material.dart';
import 'package:flutter_todoey/presentation/screens/add_todos_screen.dart';

class TodosScreenFloatingActionButton extends StatelessWidget {
  const TodosScreenFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      shape: const CircleBorder(),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const AddTodosScreen())));
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
