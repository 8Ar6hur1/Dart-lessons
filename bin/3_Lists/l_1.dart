void main() {
  // Create List / Створити список
  var fruits = ['apple', 'pineapple', 'watermelon']; // Літерали списку
  print(fruits);
  fruits = [];
  fruits = ['orange', 'pear'];
  print(fruits);

  List<String> apple = [];

  var orange = <String>[];

  // Accesseing Element / Доступ до елементу
  final secondElement = fruits[1];
  print(secondElement);

  final index = fruits.indexOf('watermelon');
  final value = fruits[1];
  print('The value at index $index is $value');

  // Assigning Values to List Element / Присвоєння значень елементу списку
  fruits[1] = 'lemon';
  print(fruits);

  // Adding Elements to the End of a List / Додавання елементів в кінець списку
  fruits.add('avocado');
  print(fruits);

  // Inserting Elements / Вставка елементів
  fruits.insert(1, 'banana');
  print(fruits);

  // Removing Elements / Видалення елементів
  fruits.remove('orange');
  print(fruits);

  fruits.removeAt(1);
  print(fruits);

  // Sorting Lists / Сортування списків
  final integers = [22, 83, 1, 443, 6, 20, 2];
  integers.sort();
  print(integers);

  final minValue = integers[0];
  print(minValue);

  final maxValue = integers[integers.length - 1];
  print(maxValue);

  fruits.sort();
  print(fruits);
}
