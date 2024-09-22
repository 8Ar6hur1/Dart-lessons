void main() {
  // spread operator (...)
  // collection if
  // collection for

  const orangeAllergt = true;

  const appleAndPineApple = ['apple', 'pineapple'];
  const orangeAndpear = [if(!orangeAllergt) 'orange', 'pear'];

  final fruits = [
    'watermelon',
    ...appleAndPineApple,
    ...orangeAndpear,
  ];
  var bigFruits = ['BANANA', for(final fruit in fruits) fruit.toUpperCase()];
  // fruits.addAll(appleAndPineApple);
  // fruits.addAll(orangeAndpear);
  print(fruits);
  print(bigFruits);
}
