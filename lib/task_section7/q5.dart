// Q5. Objects & Access Attributes - Create a class Person with attributes firstName and lastName. -
// Create an object from the class, assign values to its attributes, and print them.
class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
}

void main() {
  Person person = Person('Abdulteef', 'Rashid');
  print('First Name: ${person.firstName}, Last Name: ${person.lastName}');
}
