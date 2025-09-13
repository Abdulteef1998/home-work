// ignore_for_file: public_member_api_docs, sort_constructors_first
// Q6. Method Returning a Value - Create a class Rectangle with attributes width and height. - Add a
// method perimeter() that returns the perimeter. - In main(), create a rectangle and print its perimeter.
class Rectangle {
  int width;
  int height;
  Rectangle(
    this.width,
    this.height,
  );
  int perimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rect = Rectangle(10, 5);
  print(rect.perimeter());
}
