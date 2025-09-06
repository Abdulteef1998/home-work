// Q6: Prime Numbers Finder
// - Write a function isPrime(int n) that checks if a number is prime.
// - Use it to print all prime numbers between 1 and 50.
void main() {
  for (var i = 1; i <= 50; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int n) {
  if (n <= 1) return false;
  for (var i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
