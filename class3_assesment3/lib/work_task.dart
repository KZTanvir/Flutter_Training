import 'task.dart';

class WorkTask extends Task {
  String project;

  WorkTask(String title, String description, DateTime dueDate, this.project)
      : super(title, description, dueDate);

  void showTaskDetails() {
    super.showTaskDetails();
    print("Project: $project");
  }
}