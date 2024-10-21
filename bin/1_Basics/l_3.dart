void main() {
  const int myYearOfBirth = 2003; // Значення "const" завчасно визначено
  final hourseSinceMidnight = DateTime.now()
      .hour; // Значення "final" перетворюється в "const тільки після отримання якось значення"

  print(myYearOfBirth + hourseSinceMidnight);
}
