import 'package:flutter/material.dart';

class TodosHeader extends StatelessWidget {
  final int todoListCount;
  const TodosHeader({super.key, required this.todoListCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30.0,
            child: Icon(
              Icons.list,
              size: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text('Todoey',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700)),
          Text('$todoListCount Tasks',
              style: const TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}
