void main() {
  // a, b, c, d... e
  // 2, 4, 8, 16... 32

  final myList = ['a', 'b', 'c'];
  print(myList);

  for (final item in myList) {
    print(item);
  }

  final reversedList = myList.reversed;
  // Коли в консолі круглі скобки, "dart" нам повідомляє що це Iterables, а не List
  print(reversedList.toList()); // toList() це новий список
  // Iterables являється Lazy
}
