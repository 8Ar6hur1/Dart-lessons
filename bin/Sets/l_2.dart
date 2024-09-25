void main() {
  // Intersections // Перетинання
  final setA = {1, 2, 4, 3, 5};
  final setB = {3, 6, 7, 5};

  final intersections = setA.intersection(setB);
  print(intersections);

  // Unions // Об'єдняння
  final union = setA.union(setB);
  print(union);

  // Difference // Різниця
  final differenceA = setA.difference(setB);
  print(differenceA);

  final differenceB = setB.difference(setA);
  print(differenceB);
}
