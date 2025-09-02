// Q4
// Create a program with a map of student names to their marks. Print the name of the student with
// the highest mark
void main() {
  Map<String, int> studentMarks = {
    'Ali': 85,
    'Ahmed': 92,
    'Omar': 78,
    'Karem': 95,
    'Thrwat': 88
  };
  String topStudent = '';
  int highestMark = 0;
  studentMarks.forEach((name, mark) {
    if (mark > highestMark) {
      highestMark = mark;
      topStudent = name;
    }
  });
  print('Student with highest mark: $topStudent with $highestMark marks.');
}
