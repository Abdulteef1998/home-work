import 'dart:io';

void main() {
  stdout.write('Enter a phrase: ');
  String input = stdin.readLineSync()!;

  String lowerCase = input.toLowerCase();
  String cleaned = lowerCase.replaceAll(RegExp(r'[^a-z0-9]'), '');

  String reversed = cleaned.split('').reversed.join('');
  bool isPalindrome = cleaned == reversed;

  print(isPalindrome);
}
