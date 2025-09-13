// Q5. Constructor with Default Value - Create a class Person with attributes name and age (default =
// 18). - Create one person by setting both values and another using only the name. - Print both
// details.

class Person {
  String name;
  int age;
  Person(this.name, [this.age = 18]);
  void printDetails() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  Person person1 = Person("Abdulteef", 27);
  person1.printDetails();
}
