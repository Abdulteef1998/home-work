// Question 17
// Write a Dart program that formats a price tag string with a currency. Apply string methods such as
// toString, padLeft, and length to format and compare the results.

void main() {
  double price = 47.5;
  String priceText = price.toStringAsFixed(2);
  String finalPrice = '\$' + priceText.padLeft(8);
  print(finalPrice.length);
}
