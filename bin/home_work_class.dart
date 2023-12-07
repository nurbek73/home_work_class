import 'dart:math';

void main() {
  List<Shape> shapes = [
    Rectangle(4, 5),
    Circle(3),
    Rectangle(2, 8),
    Circle(5),
  ];

  for (Shape element in shapes) {
    double area = element.calculateArea();
    print('The area of the shape is: $area');
  }

  List<Animal> animals = [
    Dog('lord'),
    Cat('marusya'),
    Dog('muhtar'),
    Cat('amfisa'),
  ];

  for (Animal element in animals) {
    element.voice();
  }
}

abstract class Shape {
  double calculateArea();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

abstract class Animal {
  String name;
  Animal(this.name);

  void voice() {
    print(' animal voice');
  }
}

class Dog extends Animal {
  Dog(super.name);

  @override
  void voice() {
    print('bark bark');
  }
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void voice() {
    print('mew mew');
  }
}
