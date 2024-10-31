class Task {
  String title;
  String description;
  DateTime deadLine;
  bool isComplete;

  Task(this.title, this.description, this.deadLine, {this.isComplete = false});

  void showTaskDetails() {
    print("Title: $title");
    print("Description: $description");
    print("Deadline: $deadLine");
  }
}