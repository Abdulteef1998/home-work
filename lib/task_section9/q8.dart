// Q8. Longest and Shortest Word - Ask the user to input a sentence. - Print the longest word and the
// shortest word in the sentence. - Also print their lengths.
import 'dart:io';

void main() {
  print('Enter a sentence: ');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  String longestWord = '';
  String shortestWord = '';
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
    if (word.length < shortestWord.length || shortestWord == '') {
      shortestWord = word;
    }
  }
  print('Longest word: $longestWord');
  print('Shortest word: $shortestWord');
  print('Length of longest word: ${longestWord.length}');
}
