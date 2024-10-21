void main() {
  // // Використовуємо цей код в одному місці програми
  // var circleArea = 3.14 * 5 * 5;

  // // Використовуємо цей код в одному місці програми
  // var circleArea = 3.14 * 5 * 5;

  // // Використовуємо цей код в одному місці програми
  // var circleArea = 3.14 * 5 * 5;

  String myCircleArea = circleArea(5);
  print(myCircleArea);
}

// circleArea(radius) // dart не є строго типізованою мовою
String circleArea(int radius) {
  return 'Circle Area is ${3.14 * radius * radius}';
}

/*
  Типи функцій

  Перевизначенні (Переопределение) функції:

    print('hello);

    sqrt(2);

  Користувацькі (Пользовательские) функції:

    void main() {
      // Code
    }

    int cube(int n) { 
      return n * n * n; 
    }
    
*/

/*
  Користувацькі (Пользовательские) функції:
  
  1. Функції без параметру і без повертаємого типу:

    void test() {
      print('Hello)
    }

  2. Функції з параметром, но без повертаємого типу:

    void cube(int n) {
      print(n * n * n);
    }

  3. Функції без параметрім, но з повертаємим типом:

    int sum() {
      int a = 10, b = 5, c;
      c = a + b;
      return c
    }

  4. Функції з параметром, і з повертаємим типом:

    double area(int r) {
      double a;
      a = 3.14 * r * r;
      return a;
    }

*/
