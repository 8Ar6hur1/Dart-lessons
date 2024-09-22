void main() {
  const fruits = const ['apple', 'peneapple', 'warmelon'];

  for (int i = 0; i < fruits.length; i++) {
    final fruit = fruits[i];

    print('I like: $fruit');
  }

  for (final fruit_1 in fruits) {
    print('I like_1 $fruit_1');
  }

  print(fruits.first);
  print(fruits.last);

  print(fruits[0]);
  print(fruits[fruits.length - 1]);

  print('isEmpty: ${fruits.isEmpty}');
  print('isNotEmpty: ${fruits.isNotEmpty}');
}
