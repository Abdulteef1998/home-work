// Q1: Student Grades Analyzer
// - Calculate the average grade from this list: [55, 72, 90, 45, 68, 100, 88, 73, 49].
// - Create a new list with only grades above 80.

void main() {
  List<int> grades = [55, 72, 90, 45, 68, 100, 88, 73, 49];
  int sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  double average = sum / grades.length;
  print("Average grade: $average");
  List<int> above80 = grades.where((grade) => grade > 80).toList();
  print("Grades above 80: ${above80.join(', ')}");
}
