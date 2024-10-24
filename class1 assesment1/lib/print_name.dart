String? printName(String? name) {
  if (name == null || name.isEmpty) {
    return "Name is not provided";
  } else {
    return "Name is: $name";
  }
}