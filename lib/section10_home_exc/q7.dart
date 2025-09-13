// Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
// Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)

import 'dart:io';

int sumDigits(int number) {
  String digits = number.toString();
  int sum = 0;
  for (var d in digits.split('')) {
    sum += int.parse(d);
  }
  return sum;
}

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();
  int number = int.parse(input!);

  while (number > 9) {
    number = sumDigits(number);
  }

  print('Single-digit result: $number');
}
