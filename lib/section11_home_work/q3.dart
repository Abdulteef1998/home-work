// Q3
// Create a class Grade with a private field _score .
// - The setter should only accept values 0–100, otherwise print 'Invalid score'.
// - Add a getter and a computed getter isPass that returns true if score ≥ 50.
// - In main(), demonstrate updating the score multiple times and printing results.

class Grade {
  double _score;

  Grade(this._score);

  double get score => _score;

  set score(double value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print("Invalid score");
    }
  }

  bool get isPass => _score >= 50;
}

void main() {
  Grade grade1 = Grade(5);
  print('Score: ${grade1.score}, Pass: ${grade1.isPass}');

  grade1.score = 75;
  print('Score: ${grade1.score}, Pass: ${grade1.isPass}');

  grade1.score = 150;
  print('Score: ${grade1.score}, Pass: ${grade1.isPass}');
}
