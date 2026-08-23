/*Exercise 7 — Function that transforms a collection
An application has the following price list:
[1500, 2500, 8000, 12000, 5000]
Create a function that takes this list as input and returns a new list containing the prices after a 10% discount.
Then, create functions to:
• calculate the total before the discount;
• calculate the total after the discount;
• determine the savings achieved.
 */

List<double> listAfterDiscount(List<int> pricesList, [double discountRate = 10]) {
  List<double> discountedList = [];
  for (var i in pricesList) {
    discountedList.add(i-i * discountRate / 100);
  }
  return discountedList;
}

int totalBeforeDiscount(List<int> priceList) {
  var sumPrices = 0;
  for (var i in priceList) {
    sumPrices += i;
  }
  return sumPrices;
}

double totalAfterDiscount(List<int> priceList) {
  double sumDiscountedPrices = 0;
  final discountList = listAfterDiscount(priceList);
  for (var i in discountList) {
    sumDiscountedPrices += i;
  }
  return sumDiscountedPrices;
}

double calculateSavings(List<int> priceList) =>
    totalBeforeDiscount(priceList) - totalAfterDiscount(priceList);

void main(List<String> args) {
  const priceList = [1500, 2500, 8000, 12000, 5000];
  print("""- Total before discount : ${totalBeforeDiscount(priceList)} FCFA
- Total after discount : ${totalAfterDiscount(priceList)} FCFA
- Realized savings : ${calculateSavings(priceList)} FCFA
""");
}
