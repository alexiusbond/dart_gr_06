import 'interfaces.dart';
import 'mixins.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.
abstract class Animal implements Drawable {
  String name;
  int age;

  Animal(this.name, this.age);

  void sleep() {
    print('$name is sleeping.');
  }

  void makeSound();
}

class Cat extends Animal implements Playable {
  Cat(super.name, super.age);

  @override
  void makeSound() {
    print('$name says Meow!');
  }

  @override
  void play() {
    print('$name is playing by running after laser');
  }

  @override
  String draw3D(String material) {
    return 'Cat is drawn in 3D by $material';
  }

  @override
  void draw() {
    print('🐈');
  }
}

abstract class Reptile extends Animal {
  Reptile(super.name, super.age);
}

class Snake extends Reptile {
  Snake(super.name, super.age);

  void crawl() {
    print('$name is crawling.');
  }

  @override
  void makeSound() {
    print('$name hisses.');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return 'Snake is drawn in 3D by $material';
  }
}

class Parrot extends Animal with Fly implements Playable {
  Parrot(super.name, super.age);

  @override
  void makeSound() {
    print('$name says Chirp.');
  }

  @override
  void play() {
    print('$name is playing by mimicking sound!');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return 'Parrot is drawn in 3D by $material';
  }
}
