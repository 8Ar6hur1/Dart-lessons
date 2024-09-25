
/*
  Упражнение № 1: Найди сумму элементов в списке.

  Учитывая этот список чисел: [1, 2.7, 5, 8.4, 10]

  Напишите программу, которая на печатает сумму всех этих значений.
*/
void task_1() {
  List<num> numbers = [1, 2.7, 5, 8.4, 10];

  num sum = 0;

  for (var number in numbers) {
    sum += number;
  }

  print('Сума елементів у списку: $sum');
}

/*
  Упражнение № 2: Найди совпадение в списке.

  Вам дан список (list) и значение (value). Все, что вам нужно сделать, это проверить, содержит ли предоставленный список данное значение.

  Список = [60, 999, 14, "dart1", 45, 95, "dart", 1]

  Список может содержать числа или строки. Value должно возвращать true, если список содержит значение, и false, если нет. Запрещено использовать indexOf.

  Входные данные:

  Значение = “dart”

  Значение = 15;

  Результат:

  true
*/
void task_2() {
  // Варіант: 1
  List<dynamic> anyList = [60, 999, 14, "dart1", 45, 95, "dart", 1];

  var value1 = "dart";
  var value2 = 15;

  bool containsValue1 = anyList.contains(value1);
  bool containsValue2 = anyList.contains(value2);

  print(containsValue1);
  print(containsValue2);

  // Варіант: 2
  bool addValue = true;

  List<dynamic> anyList1 = [
    60,
    999,
    14,
    "dart1",
    45,
    95,
    if (addValue) "dart",
    1,
  ];

  print(anyList1);
}

/*
  Упражнение № 3: Работа со списком.

  1. Создайте список: [8, 2, 5, 4, 3, 9, 7, 1, 6];
  2. Выведите его длину.
  3. Выведите отсортированный список в порядке убывания.
  4. Создайте из существующего списка новый отсортированный подсписок длиной в 5 элементов.
  5. У нового отсортированного подсписка выведите индекс элемента со значением "7".
  6. У нового отсортированного подсписка удалите значения с 7 до 9 при помощи removeWhere и выведите в консоль.
  7. Отсортируйте основной список по возрастанию и у него замените значения 1, 2, 3 в списке на 10, 20, 30 и выведите в консоль.
  8. Объедините основной список с подсписком в новый список, используя spread оператор.

  Что должно получиться:
  1. list is [8, 2, 5, 4, 3, 9, 7, 1, 6]
  2. list length is 9 elements
  3. descending sorted list: [9, 8, 7, 6, 5, 4, 3, 2, 1]
  4. sorted sublist with length of 5 elements: [4, 5, 6, 7, 8, 9]
  5. index of an value '7' in list is 3
  6. list with removed values from 7 to 9: [4, 5, 6]
  7. sorted list with replaced values [1, 2, 3, ...] => [10, 20, 30, ...]: [10, 20, 30, 4, 5, 6, 7, 8, 9]
  8. union list: [10, 20, 30, 4, 5, 6, 7, 8, 9, 4, 5, 6]
*/
void main() {
  List<int> myList = [8, 2, 5, 4, 3, 9, 7, 1, 6]; // 1
  print(myList.length); // 2

  myList.sort((a, b) => b - a); // 3 ЗМЕНШЕННЯ
  print(myList);

  myList.sort((a, b) => a.compareTo(b)); // ЗБІЛЬШЕННЯ
  print(myList);

  List<int> sublist = myList.take(5).toList(); // 4
  print(sublist);

  int index = myList.indexOf(7); // 5
  print(index);

  sublist.removeWhere((element) => element > 7 && element <= 9); // 6
  print(sublist);

  for (int i = 0; i < myList.length; i++) {
    // 6
    if (myList[i] == 1) {
      myList[i] = 10;
    } else if (myList[i] == 2) {
      myList[i] = 20;
    } else if (myList[i] == 3) {
      myList[i] = 30;
    }
  }
  print(myList);

  final newList = [...myList, ...sublist]; // 8
  print(newList);

  newList.sort((a, b) => a.compareTo(b));
  print('+ $newList');

  newList.sort((a, b) => b - a);
  print('- $newList');
}
