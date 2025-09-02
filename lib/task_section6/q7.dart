// Q7
// Create a program with the numbers [12, 5, 8, 130, 44]. Find the largest number in the list and print
// it.
void main() {
  List<int> numbers = [12, 5, 8, 130, 44];
  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }
  print("The largest number is: $largest");
}
