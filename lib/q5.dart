// Question 5
// What is the difference between var and dynamic in Dart? Provide an example of
// each.

void main() {
  var name = 'Abdlteef';
  print(name);
  dynamic age = 25;
  print(age);
  age = 'Twenty-five'; // dynamic can change type
  print(age);
}
