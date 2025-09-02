// Q12
// Create a function that takes named parameters firstName, lastName, and an optional named
// parameter age. Print the full name and, if age is provided, also print 'Age: X'.
void main() {
  userData(firstName: 'Abdulteef', lastName: 'Rashid', age: 27);
  userData(firstName: 'John', lastName: 'Doe');
}

void userData({String firstName = '', String lastName = '', int? age}) {
  if (age != null) {
    print('$firstName $lastName is $age years old.');
  } else {
    print('$firstName $lastName');
  }
}
