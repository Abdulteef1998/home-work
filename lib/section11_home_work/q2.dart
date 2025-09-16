// Q2
// Create a class Car with private fields _brand and _year.
// - Add setters that reject empty brand names and years less than 1886 (first car invention).
// - Add getters for both.
// - In main(), demonstrate creating two car objects (one valid, one invalid input).

class Car {
  String _brand;
  int _year;
  Car(this._brand, this._year);
  String get brand => _brand;
  int get year => _year;
  set brand(String name) {
    if (name.isEmpty) {
      print("Invalid brand");
    } else {
      _brand = name;
    }
  }

  set year(int value) {
    if (value < 1886) {
      print("Invalid year");
    } else {
      _year = value;
    }
  }
}

void main() {
  Car car1 = Car('Tayota', 2024);
  print('${car1._brand},${car1.year} ,');
  Car car2 = Car('', 1700);
  car2.brand = "";
  car2.year = 1700;

  print('${car2.brand}, ${car2.year}');
}
