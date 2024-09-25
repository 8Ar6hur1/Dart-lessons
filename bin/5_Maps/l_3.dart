/*
  Упражнение № 1: Заказ пиццы

  Вам предоставлены цены на соответствующие пиццы в виде Map:

  const pizzaPrices = {
  'Venice': 289,
  'Double Cheese': 359,
  'Roman Margherita': 299,
  };

  Напишите программу для расчета суммы заказа.

  Например, при следующем заказе:

  const myOrder = ['Venice', 'Double Cheese', 'Roman Margherita'];

  Программа должна напечатать:

  Заказано 3 пиццы из 3 на сумму: 947 рублей

  Под задача № 1: если пиццы нет в меню, то программа должна сообщить об этом.

  Заказано 2 пиццы из 3 на сумму: 648рублей
  Roman Margherita нет в меню

  Под задача № 2: вам поступила новая пицца Pepperoni стоимостью 199 руб., добавьте ее в карту pizzaPrice.
  И распечатайте все меню.

  Под задача № 3: Отсортируйте карту по ключам и выведите отсортированное меню на экран.
  Примечание: Для сортировки можете воспользоваться SplayTreeMap.
*/
void main() {
  final pizzaPrices = {
    'Venice': 289,
    'Double Cheese': 359,
    'Roman Margherita': 299,
  };

  const myOrder = [
    'Venice',
    'Double Cheese',
    'Roman Margherita',
    'Hawaiian',
  ];

  int totalAmount = 0;

  List<String> unavailablePizzas = [];

  for (String pizza in myOrder) {
    if (pizzaPrices.containsKey(pizza)) {
      totalAmount += pizzaPrices[
          pizza]!; // ! - це "null assertion operator" або "оператор заперечення null".
    } else {
      unavailablePizzas.add(pizza);
    }
  }
  print(
      'Заказано ${myOrder.length} пиццы из ${pizzaPrices.length} на сумму: $totalAmount рублей');

  if (unavailablePizzas.isNotEmpty) {
    print(
        'Следующие пиццы отсутствуют в меню: ${unavailablePizzas.join(', ')}.');

    pizzaPrices['Pepperoni'] = 199;

    for (final pizza in pizzaPrices.entries) {
      print('${pizza.key}: ${pizza.value}руб.');
    }
  }
}
