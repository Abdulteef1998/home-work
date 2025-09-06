// Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
// Then, check if the average is greater than 50 or not.
import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i <= 3; i++) {
    stdout.write('Enter number ${i + 1}: ');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int sum = numbers.reduce((a, b) => a + b);
  double average = sum / numbers.length;
  print('Sum: $sum');
  print('Average: $average');
  if (average > 50) {
    print('Average is greater than 50');
  } else {
    print('Average is not  greater than 50');
  }
}
