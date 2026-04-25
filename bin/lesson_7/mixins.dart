// Миксин — набор методов, который можно «примешать» к классу.
// Миксин НЕ задаёт структуру и НЕ требует реализации.
// Добавляет функционал поверх наследования.

mixin Fly {
  void fly() {
    print('I can fly.');
  }

  void flyHigh(String title) {
    print('$title is flying high.');
  }
}
