// Q2: . Describe the difference between var, dynamic, and explicitly typed variables in Dart.
// var is a keword used to declare a variable. can Assigned one value and cannot be changed later.

var age = 27;
//  age = 'twenty-seven';
// when change make error

// dynamic is variable type that can Assigend any value and can be changed later. dynamic can be used when you are not sure type of the variable at compile time.

void main() {
  dynamic age = 27;
  print(age);
  age = 'twenty-seven';
  print(age);
}

//
