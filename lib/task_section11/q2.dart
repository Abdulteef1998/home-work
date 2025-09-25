// Q2
// Model shapes to compute total paintable area and cost.
// Requirements:
// - Provide a general shape type (concrete class) with an area() method that can be overridden.
// - Implement at least three concrete shape types with encapsulated dimensions and validated
// constructors (invalid → print; keep previous).
// - Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
// code).
// - Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
// cost to 2 decimals.
import 'dart:math';

class Shape {
  double area() => 0;
}

class ReactAngle extends Shape {
  double _width;
  double _height;
  ReactAngle(double width, double height)
      : _width = 1,
        _height = 1 {
    if (width > 0 && height > 0) {
      _width = width;
      _height = height;
    } else {
      print("Invalid Rectangle dimensions — keeping default (1x1)");
    }
  }
  @override
  double area() => _width * _height;
}

class Circle extends Shape {
  double _radius;
  Circle(double radius) : _radius = 1 {
    if (radius > 0) {
      _radius = radius;
    } else {
      print('Invaled Circle radius - keeping default (1)');
    }
  }
  @override
  double area() => pi * _radius * _radius;
}

class Triangle extends Shape {
  double _base;
  double _height;
  Triangle(double base, double height)
      : _base = 1,
        _height = 1 {
    if (base > 0 && height > 0) {
      _base = base;
      _height = height;
    } else {
      print('Invaled Triangle demisons - keeping default (1 *1)');
    }
  }
  @override
  double area() => 0.5 * _base * _height;
}

double computeCost(double totalArea) {
  double cost = 0;
  double reminig = totalArea;
  if (reminig > 0) {
    double first50 = min(reminig, 50);
    cost += first50 * 1.50;
    reminig -= first50;
  }
  if (reminig > 0) {
    double next100 = min(reminig, 100);
    cost += next100 * 1.25;
    reminig -= next100;
  }
  if (reminig > 0) {
    cost += reminig * 1.00;
  }
  return cost;
}

void main() {
  List<Shape> shapes = [
    ReactAngle(10, 5),
    Circle(3),
    Triangle(6, 8),
    ReactAngle(-3, 5)
  ];
  double totalArea = shapes.fold(0, (sum, s) => sum + s.area());
  double totalCost = computeCost(totalArea);
  print("Total Paintable Area = ${totalArea.toStringAsFixed(2)}");
  print("Total Cost = \$${totalCost.toStringAsFixed(2)}");
}
