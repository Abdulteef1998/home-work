// Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
// to set the values when creating the object. - In main(), create two car objects with different data and
// print their details.
class Car {
  String brand;
  int year;
  Car(this.brand, this.year);
  void printCar() {
    print("Brand: $brand, Year: $year");
  }
}

void main() {
  Car tayota = Car("Tayota", 2020);
  tayota.printCar();
  Car honda = Car("Honda", 2021);
  honda.printCar();
}
