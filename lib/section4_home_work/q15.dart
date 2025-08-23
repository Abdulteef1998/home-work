// Question 15
// Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
// '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
// safety where needed.

void main() {
  String path = '/';
  if (path == null) {
    print('Path is null');
    return;
  }
  switch (path) {
    case '/':
      print('Home page');
      break;
    case '/profile':
      print('Profile page');
      break;
    case '/products':
      print('Products page');
      break;
    default:
      print('  Not found Page');
  }
}
