void main() {
  // Numbers (num -> int and double)
  int myInt = 1; // 1

  double myDouble = 10.5; // Result: 10.5
  double myDouble1 = 10; // Result: 10.0

  // String (представляє собою послідовність кодировки "UTF - 16")
  String myName = "Arthur"; // Result: "Arthur"
  String mySurname = 'Boryslavsky'; // Result: 'Boryslavsky'

  String text = 'What\'s your name?'; // Result: 'What's your name?'

  print('$myInt + $myDouble + $myDouble1 + $text');

  String myFio = '''
  Boryslavsky
  Arthur
  Oleksandrovych
  '''; /* Result: 
  Boryslavsky
  Arthur
  Oleksandrovych
  */

  String personInfo =
      'I\'m am ${myName.toUpperCase()} and my syrname $mySurname'; // Result: I\'m am ARTHUR and my syrname Boryslavsky
  print(personInfo[0]);

  print(myName + mySurname); // через "+"
  print("$myName ${mySurname.toLowerCase()}"
      "$myFio"); // через $, але потрібний обов'язково String

  // boll
  var a = true; // Result: true
  var b = false; // Result: false

  print('$a + $b');

  // Rune (представляє собою послідовність кодировки "UTF - 32")
  Runes hello = Runes(
      'Hello, Dart!'); // Result: (72, 101, 108, 108, 111, 44, 32, 68, 97, 114, 116, 33)
  print(
      hello); // Result: (72, 101, 108, 108, 111, 44, 32, 68, 97, 114, 116, 33)

  // \uXXXX
  var input = Runes('\u2665 \u{1f600}'); // Result: (9829, 32, 128512)
  print(input); // Result: (9829, 32, 128512)
  print(String.fromCharCodes(input)); // Result: ♥ 😀

  // Symbol (індентифікатори, наприклад бібліотеки або класи)
  var mySymbol = #myApi; // Rusult: Symbol("myApi")
  print(mySymbol); // Rusult: Symbol("myApi")

  // Null

  // List, Set, Map
}
