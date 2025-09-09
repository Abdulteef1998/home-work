// Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. -
// Give price a default value of 0. - Create two objects: one with a custom price and one with the
// default price. Print their details
class Product {
  String name;
  int price;
  Product(this.name, [this.price = 0]);
  void productDetails() {
    print("Product Name: $name  Price: $price");
  }
}

void main() {
  Product product1 = Product("Laptop", 500);
  product1.productDetails();
  Product product2 = Product(
    'Glass water ',
  );
  product2.productDetails();
}
