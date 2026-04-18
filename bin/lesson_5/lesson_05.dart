import 'car.dart';
import 'person.dart';

void main() {
  int number = 9;
  Car myCar = Car('BMW X5', 'black', 2026);

  print(number);
  print(myCar);
  myCar.displayInfo();

  Car friendsCar = Car('Toyota Camry', 'white', 2000);
  friendsCar.displayInfo();
  // friendsCar.color = 'green';
  friendsCar.repaint('green');
  friendsCar.displayInfo();

  friendsCar.drive();
  myCar.drive();
  myCar.honk(4);

  Car bestCar = Car.redHonda(2011);
  bestCar.displayInfo();

  Person friend = Person(25, 'Jim');
  friend.age = 26;
  friend.displayInfo();

  print('My friend\'s name is ${friend.name}.');
  friendsCar.owner = friend;

  Person oldWoman = Person(88, 'Jane');
  //            a = b

  Car fastCar = Car.withOwner(
    'Lamborgini Aventador',
    'red',
    2025,
    oldWoman
  );
  fastCar.displayInfo();
  friendsCar.displayInfo();
  bestCar.owner = friend;
  bestCar.displayInfo();

  print('End of program!');
}
