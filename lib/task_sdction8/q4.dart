// Q4: Word Counter
// - Given "Dart is fun and Dart is powerful", count how many times each word appears.
// - Print the most frequent word.
void main() {
  String text = "Dart is fun and Dart is powerful";
  List<String> words = text.split(' ');
  Map<String, int> wordCount = {};

  for (var word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  String mostFrequentWord = '';
  int highestCount = 0;

  wordCount.forEach((word, count) {
    if (count > highestCount) {
      highestCount = count;
      mostFrequentWord = word;
    }
  });

  print('Word counts: $wordCount');
  print('Most frequent word: $mostFrequentWord appears $highestCount times.');
}
