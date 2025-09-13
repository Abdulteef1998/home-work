// Q3. Multiple Objects in a List - Create a class Car with attributes brand and year. - In main(), create
// a list of 3 car objects. - Print only the cars made after 2015.

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);

  void printCar() {
    print("Brand: $brand, Year: $year");
  }
}

void main() {
  List<Car> cars = [
    Car("Toyota", 2014),
    Car("Honda", 2019),
    Car("Ford", 2017),
  ];

  for (var car in cars) {
    if (car.year > 2015) {
      car.printCar();
    }
  }
}
