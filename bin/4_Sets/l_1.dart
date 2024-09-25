import 'dart:math';

void main() {
  // Creating a Set
  final Set<int> setOne = {};
  final seTwo = <int>{};

  final setThree = {1, 2, 3, 3};
  print(setThree);

  /*
    Прибираєш дублікати: Якщо в тебе є список, в якому можуть бути повторювані елементи, і ти хочеш залишити лише унікальні
    var numbers = [1, 2, 2, 3, 4, 4, 5]; // List
    var uniqueNumbers = Set.from(numbers); // Set
    print(uniqueNumbers);  // Виведе: {1, 2, 3, 4, 5}
  */
  var setFour = {1, 'hello', true};

  // Checking the content
  final fruits = {'apple', 'pineapple', 'watermelon'};
  print(fruits.contains('apple'));
  print(fruits.contains('pear'));

  // Adding and Removing single elements;
  final newFruits = <String>{};
  newFruits.add('orange');
  newFruits.add('pear');
  newFruits.add('orange');
  print(newFruits);

  newFruits.remove('pear');

  print(newFruits);

  // Adding multiple elements
  newFruits.addAll(['apple', 'pear', 'watermelon']);
  print(newFruits);

  // Looping over the elements
  for (final fruit in fruits) {
    print('I\'am like $fruit');
  }

  // Copying Sets
  final freshFruits = fruits.toSet(); // toSet() створює новий обєкт в пам'яті
  print(fruits);
  freshFruits.remove('watermelon');
  print(fruits);
  print(freshFruits);

  // Other operations
  var newFruits2 = {'pear', ...freshFruits, if (true) ...fruits};
  print(newFruits2);

  final randomGenerator = Random(); // import 'dart:math'
  final randomList = <int>[];

  for (int i = 0; i < 10; i++) {
    final randomInt = randomGenerator.nextInt(10) + 1;
    randomList.add(randomInt);
  }
  print(randomList);

  final uniqueValue = <int>{};
  final duplicates = <int>{};

  for (int number in randomList.toSet()) { // 'toSet()' Всі повторювані елементи будуть видалені ще до початку циклу.
    if (uniqueValue.contains(number)) { // 'contains' - це метод який перевіряє елемент в колекції, то метод повертає true, якщо ні — false
      duplicates.add(number);
    }
    uniqueValue.add(number);
  }
  print('duplicates: $duplicates');
  print('uniqueValue: $uniqueValue');
}
