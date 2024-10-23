class Todo {
  final String name;
  final bool isDone;

  Todo({required this.name, this.isDone = false});

  Todo toggleDone() {
    return Todo(
      name: name,
      isDone: !isDone,
    );
  }
}
