// Q9. Even, Odd, and Statistics - Ask the user to enter 10 numbers in a list. - Print how many are
// even and how many are odd. - Calculate the total sum of all even numbers and all odd numbers
// separately. - Finally, print which group (even or odd) has the larger sum.

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 10; i++) {
    print("Enter number $i: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int evenCount = 0;
  int oddCount = 0;
  int evenSum = 0;
  int oddSum = 0;
  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
      evenSum += num;
    } else {
      oddCount++;
      oddSum += num;
    }
  }
  print("Even numbers: $evenCount");
  print("Odd numbers: $oddCount");
  if (evenSum > oddSum) {
    print("Even numbers have the larger sum.");
  } else if (oddSum > evenSum) {
    print("Odd numbers have the larger sum.");
  } else {
    print("Both even and odd numbers have the same sum.");
  }
  print("Total sum of even numbers: $evenSum");
  print("Total sum of odd numbers: $oddSum");
  print("Average of even numbers: ${evenSum / evenCount}");
  print("Average of odd numbers: ${oddSum / oddCount}");
}
