import 'dart:io';
import 'dart:math';

void main() {
  print('Start of program');
  for (int i = 1; i <= 5; i = i + 1) {
    print('Step $i');
  }

  int number = 7;
  for (int i = 1; i <= 10; i++) // increment - i++ == i = i + 1
  {
    print('$number x $i = ${number * i}');
  }
  print('------------------------');
  number = 5;
  for (int i = 10; i >= 1; i--) {
    // decrement - i-- == i = i - 1
    print('$number x $i = ${number * i}');
  }
  print('------------------------');
  number = 9;
  for (int i = 10; i >= 1; i -= 2) // i -= 2 == i = i - 2; i *= 8 == i = i * 8
  {
    print('$number x $i = ${number * i}');
  }

  int count = 0;
  while (count <= 3) {
    print('Count is $count');
    count++;
    print('Square is ${count * count}');
  }

  String myStr = '#';
  while (myStr.length < 7) {
    print(myStr);
    myStr += '#'; // mystr = mysr + '#
  }

  int doCount = 0;
  do {
    print('Do-while Count is: $doCount');
    doCount++;
  } while (doCount > 5);

  int whileCount = 0;
  while (whileCount > 5) {
    print('While Count is: $whileCount');
    whileCount++;
  }

  // Коллекции List - список
  // упорядоченная коллекция элементов, доступ по индексу, может содержать дубликаты, изменяемый размер
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print('I love ${fruits[0]} and ${fruits[2]}');
  fruits[1] = 'Grapes';
  print(fruits);

  // fruits[10] = 'Pear';
  print(fruits);
  print(fruits.toString().replaceAll('[', '').replaceAll(']', ''));

  fruits.add('Kiwi');
  print(fruits);
  fruits.insert(1, 'Pineapple');
  print(fruits);
  fruits.removeLast();
  print(fruits);
  fruits.removeAt(0);
  print(fruits);
  fruits.add('Grapes');
  print(fruits);
  fruits.remove('Grapes');
  print(fruits);
  fruits.clear();
  print(fruits);

  // Коллекции Map - словарь
  // неупорядоченная коллекция пар ключ-значение, ключи уникальны
  Map<String, int> ages = {'Alice': 20, 'Bob': 22, 'Kevin': 25};
  print(ages);
  print('Alice is ${ages['Alice']} years old.');
  ages['Bob'] = 23;
  print(ages);
  ages['David'] = 33;
  print(ages);
  ages.remove('Bob');
  print(ages);
  print('Ages map contains ${ages.length} pairs');
  print('Keys: ${ages.keys}');
  print('Values: ${ages.values}');

  ages.forEach((name, age) {
    print('$name is $age years old.');
  });

  String elements = 'Cat Dog Rabbit';
  List<String> animals = elements.split(' ');
  animals.forEach((animal) {
    print('${animal.toUpperCase()}');
  });

  // Коллекции Set - множество
  // неупорядоченная коллекция уникальных элементов
  Set<int> numbers = {1, 4, -6, 35, 4};
  print(numbers);
  numbers.add(-1);
  numbers.add(35);
  print(numbers);
  // numbers[0] = 90;

  numbers.forEach((num) {
    print('${num * num}');
  });

  for (int elem in numbers) {
    print(elem / 2);
  }

  for (var animal in animals) {
    print('My favorite animal is $animal');
  }

  // break - экстренно прерывает работу всего цикла
  for (int elem in numbers) {
    if (elem < 0) {
      break;
    }
    print(elem);
  }

  // continue - прерывает работу текущего круга

  for (int elem in numbers) {
    if (elem < 0) {
      continue;
    }
    print(elem);
  }

  String enteredValue;
  while (true) {
    print('Enter a number or "q" to exit:');
    enteredValue = stdin.readLineSync()!;
    if (enteredValue == 'q') {
      break;
    } else {
      int number = int.parse(enteredValue);
      if (number % 2 == 0) {
        print('You entered even number');
      } else {
        print('You entered odd number');
      }
    }
  }
  print('End of program');
}
