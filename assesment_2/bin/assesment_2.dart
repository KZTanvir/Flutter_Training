import 'dart:io';
import 'package:assesment_2/result.dart' as result;
import 'package:assesment_2/calculate_area.dart' as calculate_area;
import 'package:assesment_2/calculate_perimeter.dart' as calculate_perimeter;
import 'package:assesment_2/print_name.dart' as print_name;
import 'package:assesment_2/divide_numbers.dart' as divide_numbers;
import 'package:assesment_2/calculate.dart' as calculate;

void mainTasks() {
  print("\n(Control Structure) Enter 1 for Result\n"
      "(Functions) Enter 2 for Area Calculation\n"
      "(Functions) Enter 3 for Perimeter Calculation\n"
      "(Null Safety) Enter 4 for Printing Name\n"
      "(Error Handling) Enter 5 for Divide Numbers\n"
      "(RL Project: Calculator) Enter 6 for Calculations\n"
      "Enter 0 to Exit");

  stdout.write("\nEnter Choice: ");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      stdout.write("\nEnter Your Grade: ");
      String? studentGrade = stdin.readLineSync();
      if (studentGrade == null || studentGrade.isEmpty) {
        print('Invalid Input!');
        break;
      }
      String? grade = result.result(studentGrade);
      print(grade);
      break;
    case '2':
      int area = calculate_area.calculateArea(5, 3);
      print("\nArea is: $area");
      break;
    case '3':
      int perimeter = calculate_perimeter.calculatePerimeter(5, 3);
      print("\nPerimeter is: $perimeter");
      break;
    case '4':
      stdout.write("\nEnter Your Name: ");
      String? name = stdin.readLineSync();
      
      if (name == null || name.isEmpty) {
        print('Invalid Input!');
        break;
      }
      
      String? nameResult =
          print_name.printName(name); // to store the return string if no input is given
      print(nameResult);
      break;

    case '5':
      stdout.write("\nEnter Dividend: ");
      int a = int.parse(stdin.readLineSync()!);

      stdout.write("Enter Divisor: ");
      int b = int.parse(stdin.readLineSync()!);

      int? result = divide_numbers.divideNumbers(a, b);
      if (result != null) {
        print("\nResult of division: $result");
      }
      break;
    case '6':
      stdout.write("\nEnter First Number: ");
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write("Enter Second Number: ");
      double num2 = double.parse(stdin.readLineSync()!);

      stdout.write("Enter Operator (+, -, *, /, %, ~/): ");
      String operator = stdin.readLineSync()!;

      double? calcResult = calculate.calculate(num1, num2, operator);
      if (calcResult != null) {
        print("\nCalculation Result: $calcResult");
      }
      break;
    case '0':
      print("\nExiting...");
      return;
    default:
      print("Invalid choice. Please try again.");
  }
}


void main() {
  print("\n=================================");
  print("|          Assessment - 2       |");
  print("=================================");

  mainTasks();
  while (true) {
    stdout.write(
        "\nDo you want perform more tasks? then Enter 1 or Enter 0 for Exit: ");
    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        mainTasks();
        break;
      case '0':
        print("\nExiting...");
        return;
      default:
        print("Enter a Valid Choice");
    }
  }
}
