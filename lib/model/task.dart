class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false}) {
    // Add function body here
    // For example, you can print a message when the task is created
  }

  void toggleDone() {
    isDone = !isDone;
  }
}
