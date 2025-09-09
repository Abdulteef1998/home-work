// Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
// set its initial values using a constructor. - Then change the age of the object and print the updated
// details.
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printData() {
    print('name: $name, age: $age');
  }
}

void main() {
  Person p1 = Person('Ahmed', 27);
  p1.printData();
  p1.age = 29;
  p1.printData();
}
