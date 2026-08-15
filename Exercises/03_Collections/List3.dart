import 'dart:io';

/*Exercise 3 — Managing a list of products

Create a list containing at least 8 product names.

The program must allow you to:
1. Display all products.
2. Search for a specific product.
3. Add a new product.
4. Delete a product.
5. Modify the name of an existing product.
6. Display the total number of products.
7. Display the products located between the 3rd and 6th elements.

**Bonus:** allow the user to enter the product they wish to search for. */
void main(List<String> args) {
  var products = [
    "Banana",
    "Potatoes",
    "Juice",
    "Software",
    "Milk",
    "Water melon",
    "Toothpate",
    "yogghurt",
  ];
  // Displaying each product
  print("----- Products in stock -----");
  products.forEach(print);

  //Searching a product
  print("----- Which product do you want ? -----");
  var searching = stdin.readLineSync();
  print(
    "The product [$searching]: ${products.contains(searching) ? "Exist" : "Doesn't exist"}",
  );

  //Adding product
  products.add("Sweet potatoes");

  //Deleting a produce
  products.remove("Toothpate");

  //Modifying a product
  products[products.indexOf("Milk")] = "Milk Shake";

  //Displaying total products and products between 3rd and 6th element
  print("- Total of products : ${products.length}}");
  print("- Product between 3rd and 6th place : ${products.sublist(3, 5)}");
}
