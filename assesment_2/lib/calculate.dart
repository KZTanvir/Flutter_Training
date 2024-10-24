double? calculate(double num1, double num2, String operator) {
  try {
    switch (operator) {
      case '+':
        return num1 + num2;
      // break is not needed as each case returns the value
      case '-':
        return num1 - num2;
      case '*':
        return num1 * num2;
      case '/':
        if (num2 == 0) {
          print("Error: Division by zero is not allowed.");
          return null;
        }
        return num1 / num2;
      case '%':
        if (num2 == 0) {
          print("Error: Modulo by zero is not allowed.");
          return null;
        }
        return num1 % num2;
      case '~/':
        if (num2 == 0) {
          print("Error: Integer division by zero is not allowed.");
          return null;
        }
        return (num1 ~/ num2)
            .toDouble(); // toDouble() - as the return type is int
      default:
        print("Error: Unsupported operator.");
        return null;
    }
  } catch (e) {
    print("Error: An exception occurred: $e");
    return null;
  }
}
