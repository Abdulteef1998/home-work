// Write a Dart program that evaluates three integer variables with different logical and comparison
// expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
// one of the expressions.

void main() {
  int a = 10;
  int b = 20;
  int c = 30;
  bool exmp1 = a < b;
  bool exmp2 = b > c;
  bool exmp3 = (a < b && b < c);
  print(exmp1);
  print(exmp2);
  print(exmp3);
  if (exmp3) {
    print('Rule is passed');
  } else {
    print('Rule is failed');
  }
}
