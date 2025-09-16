// Q7
// Ask the user to input a list of integers.
// - Print the largest number, the smallest number, and their difference.
// - Calculate the average of the list.
// - Print all numbers that are above the average.
// - Finally, print how many numbers are even and how many are odd in the list.
void main() {
  List<int> numbers = [10, 25, 30, 7, 12];

  int maxNumber = numbers[0];
  int minNumber = numbers[0];
  int sum = 0;

  for (int n in numbers) {
    if (n > maxNumber) maxNumber = n;
    if (n < minNumber) minNumber = n;
    sum += n;
  }

  int difference = maxNumber - minNumber;
  double average = sum / numbers.length;

  List<int> aboveAverage = numbers.where((n) => n > average).toList();
  int evenCount = numbers.where((n) => n % 2 == 0).length;
  int oddCount = numbers.length - evenCount;

  print('Largest Number: $maxNumber');
  print('Smallest Number: $minNumber');
  print('Difference: $difference');
  print('Average: ${average.toStringAsFixed(2)}');
  print('Numbers above average: $aboveAverage');
  print('Even numbers count: $evenCount');
  print('Odd numbers count: $oddCount');
}
