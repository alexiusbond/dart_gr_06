import 'person.dart';

class Car {
  // поля / аттрибуты
  String model;
  String color;
  int year;
  Person? owner;

  // Конструктор
  // Car(String model, String color, int year) {
  //   this.model = model;
  //   this.color = color;
  //   this.year = year;
  // }

  // Конструктор с инициализирующим списком
  // Car(String model, String color, int year)
  //   : this.model = model,
  //     this.color = color,
  //     this.year = year;

  // Конструктор с параметрами, присваивающимися напрямую
  Car(this.model, this.color, this.year);

  Car.redHonda(this.year) : model = 'Honda Civic', color = 'red';
  Car.withOwner(this.model, this.color, this.year, this.owner);

  // Методы
  void drive() {
    print('Car $model is driving.');
  }

  void repaint(String newColor) {
    color = newColor;
  }

  void displayInfo() {
    if (owner != null) {
      print('MODEL: $model YEAR: $year COLOR: $color OWNER: ${owner!.name}.' 
      + ' This car is older: ${2026 - year > owner!.age}');
    } else {
      print('MODEL: $model YEAR: $year COLOR: $color NO OWNER.');
    }
  }

  void honk(int times) {
    for (int i = 1; i <= times; i++) {
      print('Beep');
    }
  }
}
