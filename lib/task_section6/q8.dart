// Q8
// Create a program with the names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times each
// name appears and print the names that are repeated.
void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> nameCount = {};
  for (var name in names) {
    nameCount[name] = (nameCount[name] ?? 0) + 1;
  }
  print(nameCount);
}
