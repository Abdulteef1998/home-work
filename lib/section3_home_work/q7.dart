// // Q7
// . a) Start with List numbers = [4, 4, 5, 6, 6, 7].
// b) Convert it to a Set to remove duplicates and print it.
// c) Use add(), remove(), and contains() with the set, printing each result.

void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  Set<int> newSet = numbers.toSet();
  print(newSet);
  newSet.add(8);
  print(newSet);
  newSet.remove(7);
  print(newSet);

  print(newSet.contains(5));
}
