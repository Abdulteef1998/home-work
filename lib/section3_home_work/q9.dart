// // Q9:
// 9. a) Create List> students with two items, each having name and grade.
// b) Print the grade of the second student using index and key.
// c) Add both grades and print the average grade as double.

void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Abdulteef', 'grade': 75.7},
    {'name': 'Rashid', 'grade': 87.2}
  ];
  print(students[1]['grade']);
  double average = (students[0]['grade'] + students[1]['grade']) / 2;
  print(average);
}
