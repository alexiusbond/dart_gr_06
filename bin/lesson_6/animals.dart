enum Color {
  red('\x1B[31m'),
  green('\x1B[32m'),
  darkYellow('\x1B[33m');

  final String code;

  const Color(this.code);
}

class Animal {
  static int _counter = 0;

  static void showCounter() {
    print('We produced: $_counter animals;');
  }

  String name;
  int age;
  Color color;

  Animal(this.name, this.age, this.color) {
    _counter++;
  }

  String getInfo() {
    return '$name AGE: $age COLOR: ${color.code}${color.name}\x1B[0m';
  }
}

class Cat extends Animal {
  Cat(super.name, super.age, super.color);

  void meow() {
    print('Cat $name says Meow!');
  }
}

class Dog extends Animal {
  String commands;

  Dog(super.name, super.age, super.color, this.commands);

  void bark() {
    print('Dog $name says Woof!');
  }

  @override
  String getInfo() {
    return '${super.getInfo()} COMMANDS: $commands';
  }
}

class FightingDog extends Dog {
  int wins;
  FightingDog(super.name, super.age, super.color, super.commands, this.wins);

  void fight() {
    print('Dog is fighting');
  }

  // Переопределение / Перезапись метода
  @override
  String getInfo() {
    return '${super.getInfo()} WINS: $wins';
  }
}
