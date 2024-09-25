import 'dart:math';

/*
Упражнение № 1: Работа со строками.

Вам даны следующие переменные:

var temperature = 15;
var value = 10;
var dart = 'Dart';
var flutter = 'Flutter';

Напишите программу, которая выведет их в заданном формате:

Мне нравится изучать Dart и Flutter!
Сегодня температура 15 С, а завтра похолодает до (15 - 3.1) - 11.9 С.
10 плюс 10, получится 20

1. Тип var замените на соответствующие типы у переменных. Пример: var text = "Some text" => String text = "Some text"
2. Вывод должен корректно обновляться, если значение переменной value измениться .
Например, если вы измените vlaue на 4, то программа должна напечатать 4 плюс 4, получится 8.
*/

// #1
void task_1() {
  int temperature = 15;
  int value = 4;
  String dart = 'Dart';
  String flutter = 'Flutter';

  print('\nМне нравится изучать $dart и $flutter!');

  print(
      '\nСегодня температура $temperature С, а завтра похолодает до ${(temperature - value).toStringAsFixed(1)} C');

  print('\n${value + value}');
}

/*
Упражнение № 2: Конвертация температуры.

Вам дана температура в градусах Фаренгейта:

double tempFarenheit = 60,79;

Напишите программу, которая будет конвертировать градусы Фаренгейта в градусы Цельсия, используя формулу:

(°F - 32) / 1.8 = °C

Распечатайте результат в следующим виде:

60,79 °F => 15,9 °C

Причем, преобразование температуры в градусы Цельсия должна содержать не более 1 дробной цифры.
Подсказка: toStringAsFixed
*/

void task_2() {
  double tempFarenheit = 60.79;

  double convertFarenheitToCelsius = (tempFarenheit - 32) / 1.8;

  print(
      '\n\n$tempFarenheit °F => ${convertFarenheitToCelsius.toStringAsFixed(1)} °C');
}

/*
Упражнение № 3: Квадратное уравнение.

Квадратное уравнение имеет вид - a⋅x² + b⋅x + c = 0

Значения x, которые удовлетворяют этому, могут быть решены с помощью уравнения:

x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a)

Объявите три константы с именами a, b и c. Затем вычислите два значения для x, используя приведенное выше уравнение (где, ± означает плюс или минус, поэтому нужно вычислить по одному значению х для каждого).
Сохраните результаты в константах с именами x1 и x2 типа double и распечатайте их до двух знаком до запятой

Входные данные:

a = 3.2
b = -7.8
c = 1

Результат:

x1 = 2.30
x2 = 0.14

Подсказка: для работы sqrt подключить математическую библиотеку перед main() - import 'dart:math';
*/

void task_3() {
  var a = 3.2;
  var b = -7.8;
  var c = 1;

  double discriminant = b * b - 4 * a * c;

  if (discriminant < 0) {
    print('Уравнение не имеет действительных корней.');
    return;
  }

  double sqrtDiscriminant = sqrt(discriminant);
  double x1 = (-b + sqrtDiscriminant) / (2 * a);
  double x2 = (-b - sqrtDiscriminant) / (2 * a);

  String x1Formatted = x1.toStringAsFixed(2);
  String x2Formatted = x2.toStringAsFixed(2);

  print('x1 = $x1Formatted');
  print('x2 = $x2Formatted');
}

/*
Упражнение № 4: dynamic, var, final and const

Учитывая, программу ниже:

void main() {
DateTime timeNow = DateTime.now();

String maybeJava = 'Java';
String maybeFlutter = 'Flutter';

String favourite;
favourite = '$maybeJava and $maybeFlutter';
favourite = 'Now I like $favourite';

String newfavourite = favourite.replaceAll('Java', 'Dart');

print('Now is time: $timeNow');
print(newfavourite);
}

Замените основные типы переменных на dynamic, var, final или const, но при этом получить работающую программу!
И проанализируйте ваш результат.

Пример:

String temperature = 15; => const temperature = 15;
*/

void task_4() {
final DateTime timeNow = DateTime.now();

const String maybeJava = 'Java';
const String maybeFlutter = 'Flutter';

var favourite = '$maybeJava and $maybeFlutter';
favourite = 'Now I like $favourite';

var newfavourite = favourite.replaceAll('Java', 'Dart');

print('Now is time: $timeNow');
print(newfavourite);
}
