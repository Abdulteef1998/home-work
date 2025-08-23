// Q10
// a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
// after each.
// b) Create var greeting = 'Hi'; change it to another String and print.
// c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3)

void main() {
  var age = 26;
  print(age);
  age =
      25; // canot assign a String to int varrible by var  . I left it like this to prove the value cannot change and printed
  print(age);
  dynamic yourAge = 20;
  print(yourAge);
  yourAge = 'Twenty';
  print(yourAge);
  var text = 'Hi';
  print(text);
  text = 'Hello';
  print(text);
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
