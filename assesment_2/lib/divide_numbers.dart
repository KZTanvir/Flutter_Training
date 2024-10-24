int? divideNumbers(int a, int b) {
  try {
    return a ~/ b;
  } catch (e) {
    print("Error: Cannot divide by zero.");
    return null;
  }
}