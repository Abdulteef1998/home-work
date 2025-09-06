// Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
// guess up to 3 times. If they fail, reveal the correct number.
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int randomNumber = random.nextInt(20);
  int attempts = 3;
  print('Guess the number between 1 and 20. You have $attempts attempts.');
  for (int i = 0; i < attempts; i++) {
    stdout.write('Enter your guess: ');
    int userGuess = int.parse(stdin.readLineSync()!);
    if (userGuess == randomNumber) {
      print('Congratulations! You guessed the correct number: $randomNumber');
      return;
    } else if (userGuess < randomNumber) {
      print('Too low! Try again.');
    } else {
      print('Too high! Try again.');
    }
  }
  print(
      'Sorry, you ran out of attempts. The correct number was $randomNumber.');
}
