// Q11
// Create a function that takes a required product name and an optional discount percentage. If the
// discount is provided, print 'Product has discount %'. If not, print 'Product has no discount'.

void main() {
  productDiscount('Laptop', discount: 15);
  productDiscount('Smartphone');
}

void productDiscount(String productName, {int? discount}) {
  if (discount != null) {
    print('The product $productName has a discount of $discount');
  } else {
    print('The product $productName has no discount');
  }
}
