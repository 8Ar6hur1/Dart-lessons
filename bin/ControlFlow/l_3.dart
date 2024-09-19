void main() {
  int counter = 0;

  // DO
  do {
    // Навідь якщо умова буде "FALSE", "do" виконається один раз
    counter++;
    if (counter == 4) {
      // break;
      continue;
    }
    print('Hello Dart $counter');
  } while (counter < 10);

  // WHILE
  while (counter < 10) { // Умова перевіряється перед циклом
    print('Hello Dart $counter');
    counter++;
  }
}
