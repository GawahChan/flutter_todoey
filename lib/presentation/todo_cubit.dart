import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoey/presentation/models/todo.dart';

class TodosCubit extends Cubit<List<Todo>> {
  TodosCubit() : super([]) {
    List<Todo> initialList = [
      Todo(name: "Buy Pasta"),
      Todo(name: "Buy Milk"),
      Todo(name: "Buy Bread"),
    ];

    emit(initialList);
  }

  void addTodos(String todoTitle) {
    final newTodo = Todo(name: todoTitle);
    emit(List.from(state)..add(newTodo));
  }

  void toggleCompletion(Todo toggleTodo) {
    final updateTodos = state.map((todo) {
      return todo == toggleTodo ? todo.toggleDone() : todo;
    }).toList();

    emit(updateTodos);
  }

  void deleteTodo(Todo deleteTodo) {
    emit(List.from(state)..remove(deleteTodo));
  }
}
