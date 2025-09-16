// Q4
// Create a class Product with private fields _name and _price.
// - Reject empty names and negative prices in setters.
// - Add a computed getter discountedPrice that returns the price with a 10% discount applied.
// - In main(), demonstrate setting values and printing the original and discounted price.

class Product {
  String _name;
  int _price;
  Product(this._name, this._price);
  set name(String name) {
    if (name.isEmpty) {
      print("Invalid name");
    } else {
      _name = name;
    }
  }

  set price(int value) {
    if (value < 0) {
      print("Invalid price");
    } else {
      _price = value;
    }
  }

  String get name => _name;
  int get price => _price;
  double get discountedPrice => _price - (_price / 10);
}

void main() {
  Product product = Product("Laptop", 1000);
  print("Original: ${product.price}, Discounted: ${product.discountedPrice}");

  product.price = 1200;
  print("Original: ${product.price}, Discounted: ${product.discountedPrice}");

  product.price = -50;
}
