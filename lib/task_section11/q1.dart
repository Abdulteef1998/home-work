// Q1
// Design an OOP model for planning trip fuel across multiple vehicle types.
// Requirements:
// - Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
// (invalid → print an error; keep previous values).
// - Create at least two specialized vehicle types that inherit from the general type and introduce one
// private field each affecting fuel usage, with validation.
// - Define a fuel computation method in the general type; specialized types must override it with their own
// rule.
// - In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
// which vehicles cannot complete the route under their own constraints (you define the constraint per
// type).

class Vehicle {
  String _name;
  double _capacity;
  double _efficiency;

  Vehicle(this._name, double capacity, double efficiency)
      : _capacity = (capacity > 0 ? capacity : 50),
        _efficiency = (efficiency > 0 ? efficiency : 10) {
    if (capacity <= 0) print("Invalid capacity for $_name, default=50");
    if (efficiency <= 0) print("Invalid efficiency for $_name, default=10");
  }

  String get name => _name;
  double get capacity => _capacity;
  double get efficiency => _efficiency;

  double computeFuel(double distance) => distance / _efficiency;

  double availableCapacity() => _capacity;

  double totalFuel(List<double> trip) =>
      trip.fold(0.0, (sum, d) => sum + computeFuel(d));

  bool canComplete(List<double> trip) => totalFuel(trip) <= availableCapacity();

  @override
  String toString() =>
      "$_name (cap=${capacity.toStringAsFixed(1)}, eff=${efficiency.toStringAsFixed(1)})";
}

class Truck extends Vehicle {
  double _cargo;

  Truck(String name, double cap, double eff, double cargo)
      : _cargo = (cargo >= 0 ? cargo : 0),
        super(name, cap, eff) {
    if (cargo < 0) print("Invalid cargo for $name, default=0");
  }

  @override
  double computeFuel(double distance) {
    double factor = 1.0 - _cargo / 10000;
    if (factor < 0.1) factor = 0.1;
    return distance / (efficiency * factor);
  }

  @override
  String toString() => super.toString() + " [Truck, cargo=${_cargo}kg]";
}

class ElectricCar extends Vehicle {
  double _health;

  ElectricCar(String name, double cap, double eff, double health)
      : _health = (health >= 0 && health <= 100 ? health : 100),
        super(name, cap, eff) {
    if (health < 0 || health > 100) {
      print("Invalid battery health for $name, default=100%");
    }
  }

  @override
  double availableCapacity() => capacity * _health / 100;

  @override
  String toString() =>
      super.toString() + " [Electric, health=${_health.toStringAsFixed(0)}%]";
}

void main() {
  List<Vehicle> fleet = [
    Vehicle("Sedan", 50, 15),
    Truck("Truck", 300, 3, 5000),
    ElectricCar("Tesla Y", 75, 6, 85)
  ];

  List<double> trip = [120, 200, 60, 400];
  double totalDist = trip.reduce((a, b) => a + b);

  print("Trip: $trip km (total=${totalDist} km)\n");

  for (var v in fleet) {
    print(v);
    print("  Needed: ${v.totalFuel(trip).toStringAsFixed(2)} units");
    print("  Available: ${v.availableCapacity().toStringAsFixed(2)} units");
    print(v.canComplete(trip)
        ? " Can complete trip\n"
        : " Cannot complete trip\n");
  }
}
