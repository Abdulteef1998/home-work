// Q3: Number Series Challenge
// - Print numbers between 1 and 50 that are divisible by 7.
// - Find the first number greater than 40 that is divisible by 5.

void main() {
  for (var i = 0; i < 51; i++) {
    if (i % 7 == 0) {
      print(i);
    }

    if (i > 40 && i % 5 == 0) {
      print("First number greater than 40 and divisible by 5: $i");
      break;
    }
  }
}
