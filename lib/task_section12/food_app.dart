// ignore_for_file: public_member_api_docs, sort_constructors_first
class FoodItem {
  String name;
  double price;
  String category;
  FoodItem({
    required this.name,
    required this.price,
    required this.category,
  });
  @override
  String toString() {
    return '$name - \$${price.toStringAsFixed(2)} ($category)';
  }
}

class Order {
  List<FoodItem> items = [];
  void addItem(FoodItem item) {
    items.add(item);
    print("Added: ${item.name}");
  } 

  double calculateTotal() {
    return items.fold(0, (sum, item) => sum + item.price);
  }

  void showOrder() {
    if (items.isEmpty) {
      print('your order empty');
    } else {
      print('your order :');
      for (var item in items) {
        print('- ${item.name} :  ${item.price}');
      }
      print('Total: \$${calculateTotal().toStringAsFixed(2)}');
    }
  }
}

void main() {
  List<FoodItem> menu = [
    FoodItem(name: "Kepap  ", price: 8.5, category: "Gril"),
    FoodItem(name: "Shwrma  ", price: 10.0, category: "Fast Food"),
    FoodItem(name: "Coke", price: 2.5, category: "Drinks"),
    FoodItem(name: "Water", price: 1.5, category: "Drinks"),
  ];

  print(" Menu:");
  for (var item in menu) {
    print(item);
  }

  Order order = Order();

  order.addItem(menu[0]);
  order.addItem(menu[2]);
  order.addItem(menu[1]);

  order.showOrder();
}
