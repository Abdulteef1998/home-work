// Q2
// Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers.
void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  print('average  = ${sum / numbers.length}');
}
