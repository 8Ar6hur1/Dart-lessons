/*
  Упражнение № 1: Работа с Set

  Перед вами список:

  [56, 59, 53, 75, 62, 61, 75, 65, 59, 62, 64, 53,
  54, 62, 69, 53, 55, 62, 54, 66, 55, 57, 58, 75,
  72, 55, 51, 56, 71, 66, 57, 56, 59, 73, 68, 57,
  50, 54, 62, 68, 59, 64, 59, 59, 71, 68, 57, 54, 53, 72]

  Ваша задача в переменную mySet сохранить множество уникальных элементов, 
  хранящихся в списке. И в качестве ответа необходимо вывести среднее 
  арифметическое всех элементов найденного множества mySet.
*/
void task_1() {
  List<int> intList = [
    56,
    59,
    53,
    75,
    62,
    61,
    75,
    65,
    59,
    62,
    64,
    53,
    54,
    62,
    69,
    53,
    55,
    62,
    54,
    66,
    55,
    57,
    58,
    75,
    72,
    55,
    51,
    56,
    71,
    66,
    57,
    56,
    59,
    73,
    68,
    57,
    50,
    54,
    62,
    68,
    59,
    64,
    59,
    59,
    71,
    68,
    57,
    54,
    53,
    72
  ];

  intList.sort();

  final numbers = <int>{};

  var mySet = numbers.toSet();

  if (mySet.isNotEmpty) {
    var sum = mySet.reduce((a, b) =>
        a +
        b); // Додаємо суму всіх елементів "reduce" — це метод у Dart, який дозволяє об’єднати всі елементи колекції
    var average = sum / mySet.length; // Ділимо на кількість елементів
    print('Середнє арифметичне: $average');
  } else {
    print('Порожній список');
  }
}

/*
  Упражнение № 2: Объединения

  Учитывая два целочисленных набора a и b, напишите программу для вычисления набора элементов, принадлежащих либо a, либо b, но не обоим.

  Например, учитывая следующее:

  const a = {5, 7};
  const b = {7, 10};

  Программа должна напечатать {5, 10}.

  Затем вычислите и выведите сумму всех элементов полученного набора.
*/
void task_2() {
  const a = {5, 7};
  const b = {7, 10};

  a.difference(b);
  b.difference(a);

  print('a: $a; b: $b');

  final unionSet = a.union(b);

  // var sum = unionSet.reduce((value, element) => value + element);
  var sum = unionSet.reduce((value, element) => value + element);

  print('union: $sum');
}

/*
  Упражнение № 3: Уникальные слова

  Вам предоставлен текст:

  String initialText = "How many sheets could a sheet slitter slit if a sheet slitter could slit sheets?"

  Ваша задача вывести на экран количество уникальных слов в тексте без учета регистра.

  Подсказка: можно, используя RegExp
*/
void task_3() {
  String initialText =
      "How many sheets could a sheet slitter slit if a sheet slitter could slit sheets?";

  // Використовуємо RegExp для знаходження всіх слів
  RegExp regExp = RegExp(r'\b\w+\b');

  // Збираємо всі слова у список
  var words = regExp
      .allMatches(initialText)
      .map((match) => match.group(0)!.toLowerCase())
      .toList();

  // Використовуємо множину для отримання унікальних слів
  var uniqueWords = words.toSet();

  print('Кількість унікальних слів: ${uniqueWords.length}');
}
