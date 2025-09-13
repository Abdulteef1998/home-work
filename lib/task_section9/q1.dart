// ignore_for_file: public_member_api_docs, sort_constructors_first
// Q1. Class with Constructor & Print - Create a class Animal with attributes type and sound. - Add a
// constructor to set the values. - In main(), create two animals (e.g., Dog, Cat) and print their sounds.
class Animal {
  String type;
  String sound;
  Animal(
    this.type,
    this.sound,
  );
  void printSound() {
    print("The ${this.type} makes the sound: ${this.sound}");
  }
}

void main() {
  Animal dog = Animal('Dog', 'Woof  ');
  dog.printSound();
  Animal cat = Animal('Cat', 'Meow ');
  cat.printSound();
}
