import 'animals.dart';

void main() {
  Animal.showCounter();

  Cat cat = Cat('Barsik', 2, Color.red);
  print(cat.getInfo());
  cat.meow();

  Dog dog = Dog('Snooppy', 5, Color.darkYellow, 'Sit');
  print(dog.getInfo());
  dog.bark();

  FightingDog fightingDog = FightingDog('Reks', 1, Color.green, 'Fight', 15);
  print(fightingDog.getInfo());
  fightingDog.bark();
  fightingDog.fight();

  // Animal.counter = 100;
  Animal.showCounter();

  if (fightingDog.commands == 'Figth') {
    print('This dog is dangerous...');
  }

  if (dog.color == Color.darkYellow) {
    print('This dog is beautiful...');
  }

  print('\x1B[31mКрасный текст\x1B[0m');
  print('\x1B[32mЗеленый текст\x1B[0m');
  print('\x1B[33mЖелтый текст\x1B[0m');

  int number = 8;
  number = 78;

  var digit = 7.8;

  final String myStr = digit.toString();
  const String anotherUnchangable = 'Const Value';
}
