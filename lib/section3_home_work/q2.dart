// a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
// b) Print a sentence that includes all values using string interpolation.
// c) Change weight to a different value and print only the updated one.

void main() {
  String country = "Iraq";
  int year = 2025;
  double weight = 75.8;
  bool likesCoding = true;
  print(
      'I live in $country, the year is $year,my weight is $weight kg, and i like coding: $likesCoding');
  weight = 80.5;
  print(weight);
}
