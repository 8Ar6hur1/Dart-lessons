void main() {
  // var myVariable = 10;
  // dynamic myVariable = 10; // Спеціальний тип у Dart, який вимикає перевірки типів під час компіляції
  Object myVariable =
      10; // Базовий тип для всіх інших типів у Dart. Кожен тип (наприклад, int, String, List, і т.д.) є підтипом Object
  myVariable = 'hello';

  print(myVariable);
}
