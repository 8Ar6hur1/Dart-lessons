void main() {
  num someNumber = 5;
  // final someInt = someNumber as int;
  final someDouble = someNumber.toDouble();
  print(someDouble);

  // String -> int
  var myInt = int.parse('10');
  print(myInt);

  // String -> double
  var myDouble = double.parse('5.5');
  print(myDouble);

  // int -> String
  var s1 = 10.toString();
  var s2 = myInt.toString();
  print(s1 + s2);

  // double -> String
  String s3 = 3.14159.toStringAsFixed(2);
  print(s3);
}
