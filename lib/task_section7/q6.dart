// Q6. Missing Number in a Sequence - Ask the user to enter 5 numbers in a list (numbers between 1
// and 10). - Check if there is any number missing from the sequence 1–10, and print the missing
// ones.
import 'dart:io';

void main() {
  List<int> numbers = [];
  print('Enter 5 numbers between 1 and 10:');
  for (int i = 0; i < 5; i++) {
    int? num = int.tryParse(stdin.readLineSync()!);
    if (num != null && num >= 1 && num <= 10) {
      numbers.add(num);
    } else {
      print('Invalid input. Please enter a number between 1 and 10.');
    }
  }
  List<int> missingNumbers = [];
  for (int i = 1; i <= 10; i++) {
    if (!numbers.contains(i)) {
      missingNumbers.add(i);
      print('Missing number: $i');
    }
  }
  print('Missing numbers: ${missingNumbers.join(', ')}');
}
