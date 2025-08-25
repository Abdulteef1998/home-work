// Question 4
// Write a Dart program that keeps asking the user to enter a number until they enter 0, using a
// do-while loop.
import 'dart:io';

void main() {
  int number;
  do {
    print('Enter a number: ');
    number = int.parse(stdin.readLineSync()!);
  } while (number != 0);
  print('You have entered 0');
  print('Done');
}
