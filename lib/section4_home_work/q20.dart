// Question 20
// Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
// have a parent. Use a switch statement on an area variable (general or restricted) to decide what
// message to print.
void main() {
  int age = 17;
  bool hasParent = true;
  String area = 'restricted';

  if (age < 18 && !hasParent) {
    print('Access denied for under 18 without parent');
  } else if (age < 18 && hasParent) {
    print('Access granted for under 18 with parent');
  } else {
    print('Access granted  ');
  }
  switch (area) {
    case 'general':
      print('Access granted for general area');
      break;
    case 'restricted':
      print('Access granted for restricted ');
      break;
    default:
      print('Access denied for unknown area');
  }
}
