// ignore_for_file: public_member_api_docs, sort_constructors_first
// Q2. Class with Method - Create a class Student with attributes name and marks. - Add a method
// hasPassed() that returns true if marks >= 50, otherwise false. - In main(), create a student object
// and print whether they passed.

class Student {
  String name;
  int marks;
  Student(
    this.name,
    this.marks,
  );
  bool hasPassed() {
    if (marks >= 50) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Student Abdulteef = Student('Abdulteef', 40);
  print(Abdulteef.hasPassed());
}
