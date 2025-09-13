// Q1 Create a class City with attributes name and population. In main(), create two city objects and
// print their details.

class City {
  String name;
  int population;
  City(
    this.name,
    this.population,
  );
}

void main() {
  City cario = City('Cario', 1000000);
  print('City: ${cario.name} , Population = ${cario.population}');
  City baghdad = City('Baghdad', 70000);
  print('City :${baghdad.name}, Population =${baghdad.population} ');
}
