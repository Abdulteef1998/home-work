// Q8: Lottery Number Checker
// - Generate a random list of 6 numbers between 1–50.
// - Compare it with a ticket [5, 10, 15, 20, 25, 30] and print how many match.
import 'dart:math';

void main() {
  List<int> ticket = [5, 10, 15, 20, 25, 30];
  Random random = Random();
  List<int> lotteryNumbers = List.generate(6, (_) => random.nextInt(50) + 1);

  int matches = lotteryNumbers.where((num) => ticket.contains(num)).length;

  print('Lottery Numbers: ${lotteryNumbers.join(', ')}');
  print('Ticket: ${ticket.join(', ')}');
  print('Number of matches: $matches');
}
