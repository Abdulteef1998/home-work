// ignore_for_file: public_member_api_docs, sort_constructors_first
// Q7. Object Interaction - Create a class Account with attributes owner and balance. - Add methods
// deposit(amount) and withdraw(amount). - In main(), create an account, deposit 500, withdraw 200,
// and print the final balance.

class Account {
  String owner;
  double balance;
  Account(
    this.owner,
    this.balance,
  );
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

void main() {
  var account = Account("Abdulteef", 600);
  account.deposit(200);
  account.withdraw(100);
  print(account.balance);
}
