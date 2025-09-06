// Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
// numbers, and then calculate the difference between them.
import 'dart:io';
import 'dart:math';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    stdout.write('Enter number ${i + 1}: ');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int largestNumber = numbers.reduce(max);
  int smallerstNumber = numbers.reduce(min);
  int difference = largestNumber - smallerstNumber;
  print('Largest Number: $largestNumber');
  print('Smallest Number: $smallerstNumber');
  print('Difference: $difference');
}
