/*## Exercise 3 — Shop Product
Create a `Product` class.
### Product Data
A product has:
- an ID;
- a name;
- a price;
- a stock quantity.

### Operations
The class must allow you to:
- increase stock;
- decrease stock;
- calculate the total stock value;
- change the price;
- display product information.
Decreasing stock must never result in a negative quantity.

### Scenario
A product costs **15,000 FCFA** and initially has **20 units** in stock.
Then perform the following:
1. receive 10 products;
2. sell 5 products;
3. change the price;
4. display the stock value. */
class Product {
  //Attributes
  String _id;
  String _name;
  double _price;
  int _stockQuantity;

  //Constructor
  Product(this._id, this._name, this._price, this._stockQuantity);

  //Methods
  void increaseStock(int quantity) {
    if (quantity > 0) {
      _stockQuantity += quantity;
    }
  }

  void decreaseStock(int quantity) {
    if (quantity > 0 && _stockQuantity >= quantity) {
      _stockQuantity -= quantity;
    }
  }

  double calculateTotalStockValue() => _stockQuantity * _price;

  void modifyPrice(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    }
  }

  void displayInformation() {
    print("""==========================
ID : $_id
Name : $_name
Price : $_price Fcfa
Quantity in stock : $_stockQuantity 
==========================""");
  }
}

void main(List<String> args) {
  Product p = Product('P001', "Guitare", 15000, 20);
  p.displayInformation();
  p.increaseStock(10);
  p.decreaseStock(5);
  p.modifyPrice(10000);
  p.displayInformation();
  print(p.calculateTotalStockValue());
}
