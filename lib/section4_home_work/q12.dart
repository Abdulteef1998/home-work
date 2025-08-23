// Question 12
// Create a Dart program that safely reads a phone number from a map. If the phone number is null,
// print a default message. Then update the phone number and print its length.
void main() {
  Map<String, String?> userInfo = {
    'name': 'Abdulteef',
    'phoneNumber': null,
    'email': 'abdulteef@gmail.com'
  };
  print(userInfo['phoneNumber'] ?? 'No phone number ');
  userInfo['phoneNumber'] = '07711112263';
  print(userInfo['phoneNumber']!.length);
}
