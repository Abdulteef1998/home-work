// void main() {
//   // Map<int, int> ages = {0: 25, 1: 27};
//   // ages[2] = 30;
//   // ages[3] = 35;
//   // print(ages);

//   int mathScore = 85;
//   int scienceScore = 90;
//   bool isMaathScoreHigherThanScience = mathScore > scienceScore;
//   bool isMaathScoreSmallerThanScience = mathScore < scienceScore;
//   print(isMaathScoreHigherThanScience);
//   print(isMaathScoreSmallerThanScience);
// }

// Q1:Create a List<int> containing numbers 1 to 5, add two more numbers, and remove the first number.

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];
//   numbers.add(8);
//   numbers.add(9);
//   numbers.removeAt(1);
//   print(numbers);
// }

// Q3: Create a Set<String> of friends' names, add a duplicate name, and check if the set changes.

// void main() {
//   Set<String> friends = {"Ali", "Sara", "John"};
//   friends.add("Ali"); // duplicate
//   print(friends); // Set won't change
// }

//Q4: Create a Map<String, String> of country → capital, add a new country, and print its capital.

// void main() {
//   Map<String, String> capitals = {"Iraq": "Baghdad", "Germany": "Berlin"};
//   capitals["France"] = "Paris";
//   print(capitals['Iraq']); // Output: Paris
// }

// Question 5 Read a temperature (int). If > 30 print "Hot", if < 10 print "Cold", else print "Moderate

// void main() {
//   int temp = 35;

//   if (temp > 30) {
//     print("Hot");
//   } else if (temp < 10) {
//     print("Cold");
//   } else {
//     print("Moderate");
//   }
// }

// Question 6 Check if a number is positive, negative, or zero

// void main() {
//   int num = -1;

//   if (num > 0) {
//     print("Positive");
//   } else if (num < 0) {
//     print("Negative");
//   } else {
//     print("Zero");
//   }
// }

// Question 7: Check if age ≥ 18 → print "Allowed", else print "Not allowed".

// void main() {
//   int age = 20;

//   if (age >= 18) {
//     print("Allowed");
//   } else {
//     print("Not allowed");
//   }
// }

// Question 8:  Check if two numbers are equal.

// void main() {
//   int a = 5, b = 5;

//   if (a == b) {
//     print("Equal");
//   } else {
//     print("Not Equal");
//   }
// }

// Question 9: Compare two ages and print who is older.

// void main() {
//   int age1 = 25;
//   int age2 = 30;

//   if (age1 > age2) {
//     print("First person is older");
//   } else if (age2 > age1) {
//     print("Second person is older");
//   } else {
//     print("They are the same age");
//   }
// }

// Question 10:Check if a number is less than 100 and greater than 50 at the same time.

// void main() {
//   int num = 51;

//   if (num < 100 && num > 50) {
//     print("Number is between 50 and 100");
//   } else {
//     print("Number is out of range");
//   }
// }

//Question 11: Create a list and use the dot operator to add items.

// void main() {
//   List<int> numbers = [1, 2, 3];
//   numbers.add(4); // dot operator
//   numbers.add(5);
//   print(numbers);
// }

// Question 12:  Create a map and use the dot operator to get keys and values.

// void main() {
//   Map<String, String> capitals = {"Iraq": "Baghdad", "Germany": "Berlin"};
//   print(capitals.keys); // dot operator
//   print(capitals.values); // dot operator
// }

//   Question 13: Create a string and use the dot operator to change it to uppercase.

// void main() {
//   String name = "dart";
//   print(name.toUpperCase()); // dot operator
// }

//   Question 14:  Create a list of numbers, add two numbers, remove one.

// void main() {
//   List<int> nums = [1, 2, 3];
//   nums.add(4);
//   nums.add(5);
//   nums.remove(2);
//   print(nums);
// }

// // Question 15:  