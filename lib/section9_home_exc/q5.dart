// Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
// number and the second largest number (without sorting the list).

import 'dart:io';

void main() {
  List<int> numbers = [];

  print('Enter 6 numbers:');
  for (int i = 0; i < 6; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int largest = numbers[0];
  int? secondLargest;

  for (int number in numbers) {
    if (number > largest) {
      secondLargest = largest;
      largest = number;
    } else if (number < largest) {
      if (secondLargest == null || number > secondLargest) {
        secondLargest = number;
      }
    }
  }

  print('Largest number is $largest');
  if (secondLargest != null) {
    print('Second largest number is $secondLargest');
  } else {
    print('No second largest number (all numbers are equal).');
  }
}
