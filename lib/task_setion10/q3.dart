// ignore_for_file: public_member_api_docs, sort_constructors_first
// Q3
// Create a class Person with private fields _firstName and _lastName.
// - Add setters for both fields that reject empty strings (print 'Invalid name' if empty).
// - Add getters for both fields.
// - Add a computed getter fullName that returns 'firstName lastName'.
// - In main(), demonstrate:
// 1. Creating a person with valid names and printing fullName.
// 2. Trying to set an empty string for firstName or lastName (should print 'Invalid name').

class Person {
  String _firstName;
  String _lastName;
  Person(
    this._firstName,
    this._lastName,
  );
  String get FirstName => _firstName;
  set firstName(String value) {
    if (value.isNotEmpty) {
      _firstName = value;
    } else {
      print('Invalid name');
    }
  }

  String get lastName => _lastName;
  set lastName(String value) {
    if (value.isNotEmpty) {
      _lastName = value;
    } else {
      print('Invalid name');
    }
  }

  String get fullName => '$_firstName $_lastName';
}

void main() {
  Person p1 = Person('Abdulteef', 'Rashid');
  print('Full Name: ${p1.fullName}');
  p1._firstName = '';
  p1.lastName = '';
}
