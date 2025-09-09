// Q7. Word Puzzle - Ask the user for a word. - If the word contains more than 5 characters, print it
// reversed. - If it has 5 or fewer characters, print the word twice in a row (e.g., 'cat' → 'catcat').

import 'dart:io';

void main() {
  print('Enter a word:');
  String? word = stdin.readLineSync();
  if (word != null) {
    if (word.length > 5) {
      String reversedWord = word.split('').reversed.join('');
      print('Reversed word: $reversedWord');
    } else {
      print('Word twice: ${word + word}');
    }
  } else {
    print('No input provided.');
  }
}
