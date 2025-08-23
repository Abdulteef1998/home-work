// Question 18
// Write a Dart program that reads environment variables from a map. If a value is null, replace it with
// a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
// conditions.

void main() {
  Map<String, String?> environment = {
    'Env': 'prod',
    'App_name': 'MyApp',
    'DB_HOST': 'localhost',
    'DB_PORT': '3306',
    'DB_USER': 'root',
    'DB_PASS': 'password',
    'DB_NAME': 'mydb',
  };
  String apiUrl = environment['API_URL'] ?? 'https://api.example.com';
  print(apiUrl.toUpperCase());
  if (environment['Env']?.toLowerCase() == 'prod') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
  ;
  {}
}
