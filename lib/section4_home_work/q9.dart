// Question 9
// Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
// count with the original list length and print a message if duplicates were removed.

void main() {
  List<int> numbers = [1, 1, 2, 2, 3, 4, 5, 6];
  List<int> uniqueNumbers = numbers.toSet().toList();
  if (numbers.length != uniqueNumbers.length) {
    print('Duplacate removed ');
  } else {
    print(' duplicate Not removed ');
  }
  print(uniqueNumbers);
}
