// Q9
// Create a function that takes two integers as parameters and prints which one is larger.
void main() {
  largerNumber(10, 5);
}

void largerNumber(int a, int b) {
  if (a > b) {
    print('$a is larger than $b');
  } else {
    print('$b is larger than $a');
  }
}
