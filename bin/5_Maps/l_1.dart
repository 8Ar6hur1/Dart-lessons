void main() {
  // Create a Map
  final Map<String, int> emptyMap = {}; // Ключ --> значення
  final emptyMap1 = <String, int>{};

  final emptySomething = {};
  final mySet = <String>{};

  print('$emptyMap + $emptyMap1 + $emptySomething + $mySet');

  final caloriesInFruit = {
    'apple': 200,
    'peneapple': 150,
    'watermelon': 650,
  };

  final test = {1: 'one', 2: 'two'};

  print(caloriesInFruit);
  print(test);

  final caloriesInFruit1 = {
    'apple': [200, 650],
    'peneapple': 150,
    // 'apple': 650,
  };
  print(caloriesInFruit1);

  final caloriesInFruit2 = {
    'apple': 200,
    'peneapple': 200,
    'watermelon': 200,
  };
  print(caloriesInFruit2);

  // Accessing Key-Value Pairs
  final numberCaloriesinApple = caloriesInFruit[
      'apple']; // Якщо невірний ключ, буде повернуте значення Null
  print(
      'apple calories: ${numberCaloriesinApple?.isEven}'); // isEven — це властивість у Dart, яка дозволяє визначити, чи є число парним

  // Adding Elements to a Map
  caloriesInFruit['pear'] = 50;
  print(caloriesInFruit);

  // Updating an Element
  caloriesInFruit['pear'] = 100; // значення перезапишиться
  print(caloriesInFruit);

  // Removing Elements From a Map
  caloriesInFruit.remove('pear');
  print(caloriesInFruit);

  // Accessing Properties
  print(caloriesInFruit
      .isEmpty); // "isEmpty" - це метод який вказує чи пусте значення
  print(caloriesInFruit
      .isNotEmpty); // "isNotEmpty" - це метод який вказує чи не пусте значення
  print(caloriesInFruit
      .length); // "lenght" - це метод який вказує на кількість елементів

  print(caloriesInFruit.keys); // "keys" показує ключі

  // Checking for Key or Value Existence
  print(
      caloriesInFruit.containsKey('apple')); // containsKey - виконується швидко
  print(caloriesInFruit.containsValue(1)); // containsValue - виконується помало

  // Looping Over Elements of a Map

  // for (var calories in caloriesInFruit) {
  //   print(caloriesInFruit[calories]);
  // }

  // forEach
  for (var key in caloriesInFruit.keys) {
    print(key);
  }

  // Тип даних Map, "entries" відноситmся до пари ключ-значення
  for (final entry in caloriesInFruit.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}
