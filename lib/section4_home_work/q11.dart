// Question 11
// Write a Dart program that applies discounts to a price. Use nested if/else to apply different
// discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
// Print the final price.

void main() {
  bool isStudent = true;
  bool hasCoupon = true;
  double price = 100.0;
  double discountThreshold = 50.0;
  double finalPrice = price;
  if (isStudent) {
    finalPrice = finalPrice * 0.9;
    print('Discount of Student: $finalPrice');
  } else {
    if (hasCoupon) {
      finalPrice = finalPrice * 0.95;
      print('Discount of coupon: $finalPrice');
    } else {
      if (price > discountThreshold) {
        finalPrice = finalPrice * 0.85;
        print('Discount of High price: $finalPrice');
      } else {
        print('No discount Applied');
      }
    }
  }

  print('Final Price: ${finalPrice.toStringAsFixed(2)}.');
  print('orgnal price: ${price.toStringAsFixed(2)}.');
}
