// Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
// print the total count of unique words.
import 'dart:io';

void main() {
  stdout.write('Enter a sentence: ');
  String? input = stdin.readLineSync();
  if (input == null || input.trim().isEmpty) {
    print("No sentence provided.");
    return;
  }

  List<String> words = input.split(' ');
  Map<String, int> wordsCount = {};

  for (var word in words) {
    word = word.toLowerCase();
    wordsCount[word] = (wordsCount[word] ?? 0) + 1;
  }

  print("\nWords that appear only once:");
  for (var entry in wordsCount.entries) {
    if (entry.value == 1) {
      print(entry.key);
    }
  }

  int uniqueCount = wordsCount.values.where((count) => count == 1).length;
  print("\nTotal unique words: $uniqueCount");
}
