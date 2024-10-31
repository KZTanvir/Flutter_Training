import 'task.dart';

class PersonalTask extends Task {
  String location;

  PersonalTask(String title, String description, DateTime dueDate, {this.location = ""})
      : super(title, description, dueDate);

  void showTaskDetails() {
    super.showTaskDetails();
    print("Location: $location");
  }
}