// Question 13
// Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
// statement to print a message for each grade.

void main() {
  int mark = 90;
  String grade;
  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else if (mark >= 60) {
    grade = 'D';
  } else {
    grade = 'F';
  }
  switch (grade) {
    case 'A':
      print('Exelent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Poor');
      break;
    case 'D':
      print('Failed');
      break;
    default:
      print('Out of Range');
  }
}
