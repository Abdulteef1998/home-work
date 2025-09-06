// Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
// 10, then calculate the sum of all results.
import 'dart:io';

void main() {
  stdout.write('Enter Number: ');
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (var i = 1; i <= 10; i++) {
    int result = num * i;
    sum += result;
  }
  print('Sum of All Multiples: $sum');
}
