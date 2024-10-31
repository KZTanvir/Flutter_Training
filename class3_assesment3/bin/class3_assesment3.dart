import 'package:class3_assesment3/personal_task.dart';
import 'package:class3_assesment3/work_task.dart';

void main() {
  PersonalTask personalTask = PersonalTask(
    "Grocery Shopping",
    "Buy groceries for the week",
    DateTime(2024, 10, 30),
    location: "SuperShop",
  );

  WorkTask workTask = WorkTask(
    "Project Report",
    "Complete the project report by the deadline",
    DateTime(2024, 11, 5),
    "Project CNET",
  );

  print("Personal Task Details:");
  personalTask.showTaskDetails();

  print("\nWork Task Details:");
  workTask.showTaskDetails();
}