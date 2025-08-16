// Q: Declare a var variable and assign a string value to it. Then reassign an integer to the same variable. Print the variable after each assignment.
void main() {
  var numberOfRoom = 'Ten';
  print(numberOfRoom);
  numberOfRoom = 10;
  print(numberOfRoom);
  // cannot reassign a different type to a var variable in Dart because it is statically typed after the first assignment.
//  print(numberOfRoom);
}
