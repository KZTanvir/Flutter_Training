String? result(String studentGrade) {
  switch (studentGrade) {
    case 'A':
      return "Excellent";
    case 'B':
      return "Good";
    case 'C':
      return "Fair";
    case 'D':
      return "Needs Improvement";
    default:
      return "Invalid Grade";
  }
}