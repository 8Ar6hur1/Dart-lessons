void main() {
  // 1. Non-nullable by default
  // 2. Fully sound

  String? name; // String? -> String

  // Flow Analysis: Type Promotion
  // name = 'Arthur';

  if (name == null)
    return print('Unknown name');
  else
    print('\n${name.toUpperCase()}');

  // Flow Analysis: Difinite Assignment
  String result;

  if (DateTime.now().hour < 18) {
    result = 'Good Morning';
  } else {
    result = 'Good Afternoon';
  }
  print('\n$result');

  // null aware operators
  // ?? : if-null operator
  print('\n$name' ??
      '\nUnknown name'); // Якщо значення дорівнює "null", виконується значення з права
  // if (name == null) return print('\nUnknown name');

  // ??= : Null aware assignment operator
  print(name ??=
      'arthur'); // Якщо змінна дорівнює "null", присвоюємо значення з права
  // if (name == null) name = 'arthur';

  // ?. : Null-aware access operator
  print(name
      ?.toUpperCase()); // Повертає значення "null", якщо ліва частина дорівнює "null", в іншому випадку він повертає значення роботи методу
  print(name?.length ?? 0);

  // ! : Null assertion operator
  print(name!
      .toUpperCase()); // використовується, щоб сказати компілятору: "Я впевнений, що це значення не є null, тому використовуй його як ненульове".

  // as : casting
  num? value = 10;
  print(value as int); // дозволяє явно вказати тип об'єкта, коли ви знаєте, що цей об'єкт є певного типу, але Dart самостійно цього не може визначити
  
}
