/*Exercise 3 — Function that returns, function that displays
Create two different functions:
• a function that calculates and returns the price including tax (TTC) for a product;
• a function that displays an invoice.
The invoice must include the product, the price excluding tax (HT), the VAT, and the price including tax (TTC).
The display function must use the result provided by the calculation function.
Objective: to understand the difference between performing a calculation, returning information, and displaying
information. */

double CalculateGrossPrice(double netPrice, double taxRate) =>
    netPrice * (1 + taxRate / 100);

void displayBill(String product, double netPrice, double taxRate) {
  final grossPrice = CalculateGrossPrice(netPrice, taxRate);
  print("""======== Bill ========
Product : $product
Net price : $netPrice FCFA
Tax rate : $taxRate %
To pay : $grossPrice FCFA
""");
}

void main(List<String> args) {
  final String product = "Burger";
  final double productPrice = 1200.15;
  final double taxRate = 19;
  displayBill(product, productPrice, taxRate);
}
