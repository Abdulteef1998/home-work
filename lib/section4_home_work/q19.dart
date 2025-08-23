// Question 19
// Write a Dart program that converts a list of names to a set of unique values. Create a map with
// counts of occurrences. Compare lengths and print a message if a specific name appears more than
// once

void main() {
  List<String> names = [
    'Abdulteef',
    'Abdulteef',
    'Ali',
    'Rashid',
  ];
  Set<String> uniqueNames = names.toSet();
  Map<String, int> nameCounts = {};
  for (var name in names) {
    nameCounts[name] = (nameCounts[name] ?? 0) + 1;
  }
  if (uniqueNames.length != names.length) {
    print('duplicate names found');
  } else {
    print('no duplicate names found');
  }
  print(uniqueNames);
  print(nameCounts);
}
