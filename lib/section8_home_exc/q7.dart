// Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
// and how many characters (excluding spaces)
import 'dart:io';

void main() {
  stdout.write('Enter a short sentence: ');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  int wordCount = 0;
  for (String word in words) {
    if (word.isNotEmpty) {
      wordCount++;
    }
  }
  int charCount = sentence.replaceAll(' ', '').length;

  print('Number of words: $wordCount');
  print('Number of characters (excluding spaces): $charCount');
}
