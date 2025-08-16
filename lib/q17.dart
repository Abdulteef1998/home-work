// Question 17
// If you need a variable that can hold any type of value and may change during
// execution, which data type would you use? Write a code example to show this.

void main() {
  dynamic myVariable = 10;
  print(myVariable);
  myVariable = "Hello, User!";
  print(myVariable);
  myVariable = false;
  print(myVariable);
}
