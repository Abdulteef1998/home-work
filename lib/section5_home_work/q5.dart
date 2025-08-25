// Q5
// Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.

void main() {
  String text = 'EGP 12.50';
  var parts = text.split(' ');
  double price = double.parse(parts[1]);

  print(price.toStringAsFixed(2));
}
