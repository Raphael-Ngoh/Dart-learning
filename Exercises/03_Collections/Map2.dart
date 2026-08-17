/*Exercise 2 — Shop Inventory
A shop stocks the following products: Keyboard — 25,000 FCFA; Mouse — 10,000 FCFA; Monitor
— 120,000 FCFA; Headset — 35,000 FCFA; Webcam — 45,000 FCFA.
• Represent this inventory using a Map.
• The program must allow you to retrieve: the list of products; the price of a specific product; the total
number of products; the most expensive product; the least expensive product; the total price of all products.
• Then, add a new product and modify the price of an existing product. */
void main(List<String> args) {
  Map<String, int> inventory = {
    "Keyboard": 25000,
    "Mouse": 10000,
    "Monitor": 120000,
    "Headset": 35000,
    "Webcam": 45000,
  };

  //Displaying the list of products
  inventory.forEach(((key, value) => print("- $key")));

  //Price of a specific product
  var product = "Headset";
  print("$product : ${inventory[product]}");

  //Most expensive product
  String expensive_product = "Mouse";
  String cheap_product = "Mouse";
  int expensive_price = inventory[expensive_product]!;
  int cheap_price = inventory[cheap_product]!;

  for (var item in inventory.keys) {
    if (inventory[item]! > expensive_price) {
      expensive_price = inventory[item]!;
      expensive_product = item;
    }
    if (inventory[item]! < cheap_price) {
      cheap_price = inventory[item]!;
      cheap_product = item;
    }
  }

  print(
    "The most xpensive product : $expensive_product \nThe Cheapest product : $cheap_product",
  );

  //Total products
  print("Total products : ${inventory.length}");

  //Total price of products in inventory
  var totalPrice = 0;
  for (var price in inventory.values) {
    totalPrice += price;
  }
  print("The total price : $totalPrice");
}
