// Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
// count how many vowels it has
import 'dart:io';

void main() {
  stdout.write("Enter a word: ");
  String? word = stdin.readLineSync();

  if (word != null) {
    String reversedWord = word.split('').reversed.join('');
    int vowelCount =
        word.split('').where((c) => 'aeiouAEIOU'.contains(c)).length;

    print("Reversed Word: $reversedWord");
    print("Number of Vowels: $vowelCount");
  } else {
    print("No word entered.");
  }
}
