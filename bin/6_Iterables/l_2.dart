void main() {
  // Creating an Iterable
  Iterable<String> myIterable = ['a', 'b', 'c'];

  // Accessing element
  final twoElement = myIterable.elementAt(1);
  print(twoElement);

  // Finding the First and Last element
  print('\nfirst: ${myIterable.first}');
  print('last: ${myIterable.last}');

  // Getting the length
  print('\nlength: ${myIterable.length}');

  // Other important methods on Iterable
  // map
  // where
  // expand
  // contains
  // forEach
  // reduce
  // fold

  // 1 to 10 000: 1, 4, 9, 16... 25
  Iterable<int> hundredSquare() sync* {
    for (int i = 1; i < 100; i++) {
      yield i * i;
    }
  }

  // final squares = hundredSquare();
  // for (int square in squares) {
  //   print(square);
  // }

  final squres = hundredSquare();
  for (int square in squres) {
    print(square);
  }
}
