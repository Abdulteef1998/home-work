// Q2: Grocery Price Calculator
// - From this map: {"apple": 5, "banana": 3, "orange": 4, "mango": 10} add "grape": 7 and update
// "banana" to 4.
// - Given a shopping list ["apple", "apple", "mango"], calculate the total cost.
void main() {
  Map<String, int> fruitPrice = {
    "apple": 5,
    "banana": 3,
    "orange": 4,
    "mango": 10
  };
  fruitPrice["grape"] = 7;
  fruitPrice["banana"] = 4;

  List<String> shoppingList = ["apple", "apple", "mango"];
  int totalCost = 0;
  for (String fruit in shoppingList) {
    totalCost += fruitPrice[fruit] ?? 0;
  }
  print("Total Cost: $totalCost");
}
