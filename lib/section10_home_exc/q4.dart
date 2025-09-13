// Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
// that increases the salary. In main(), create an employee, give them a raise, and print the new
// salary
class Employee {
  String name;
  int salary;
  Employee(
    this.name,
    this.salary,
  );
  giveRaise(int amount) {
    salary += amount;
  }
}

void main() {
  Employee person1 = Employee('Abdulteef', 1000);
  person1.giveRaise(500);

  print('Salary of ${person1.name} = ${person1.salary}');
}
