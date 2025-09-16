// Q1
// Create a class BankAccount with a private field _balance.
// - Add a getter balance that returns the balance.
// - Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
// - In main(), demonstrate creating an account, updating the balance, and trying to set a negative
// balance.
class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Invalid balance');
    }
  }
}

void main() {
  BankAccount bankAccount = BankAccount(500);

  print(bankAccount.balance);
  bankAccount.balance = 100;
  print(bankAccount.balance);
  bankAccount.balance = -50;
  print(bankAccount.balance);
}
