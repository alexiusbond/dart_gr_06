import 'dart:io';

void main() {
  int temperature = 17;
  int numberOfStudents = 5;
  bool isRaining = true;

  if (temperature > 15) {
    // true
    String cinemaTitle = 'Cosmo Park';
    print('Go to the cinema $cinemaTitle');
  }

  if (numberOfStudents == 22) {
    // false
    print('Play Football');
  }

  if (temperature < 0) {
    // false
    print('Go to school');
  } else {
    print('Go walking');
  }

  if (isRaining) {
    // true
    print('Take an umbrella');
  } else {
    print('Take on a hat');
  }

  if (temperature > 35) {
    print('The weather is hot');
  } else if (temperature > 25) {
    print('The weather is warm');
  } else if (temperature > 15) {
    // true
    print('The weather is cool');
  } else if (temperature > 0) {
    print('The weather is cold');
  } else {
    print('The weather is freezing');
  }

  // else{
  //   print('Go to Geeks!');
  // }

  // numberOfStudents = numberOfStudents + 10;
  if (numberOfStudents > 10) {
    // false
    print('Go to picnic');
    if (temperature > 20) {
      print('Eat an ice-cream');
    } else {
      print('Drink a hot tea');
    }
  }

  // && - логический оператор AND (И)
  if (temperature > 10 && temperature < 20) {
    // true and true = true
    print('Go to cafe');
  }

  if (numberOfStudents >= 20 && isRaining) {
    // false and  = false
    print('Go shopping');
  }

  // || - логический оператор OR (ИЛИ)
  if (isRaining || temperature < 0) {
    // true or = true
    print('Take on warm clothes');
  }

  if (numberOfStudents != 5 || temperature <= -4) {
    // false or false = false
    print('Play bowling!');
  }

  if (temperature > 15 && temperature < 25 ||
      numberOfStudents > 10 && numberOfStudents < 30 ||
      isRaining) {
    // true and true or false and true or true => 1 * 1 + 0 * 1 + 1 = 1 + 0 + 1 = 1 (true)
    print('Go to park');
  }

  if (temperature > 15 &&
      (temperature < 25 || numberOfStudents > 10) &&
      (numberOfStudents < 30 || isRaining)) {
    // true and (true or false) and (true or true) => 1 * (1 + 0) * (1 + 1) = 1 * 1 * 1 = 1 (true)
    print('Go to gym');
  }

  // if (isRaining) {
  //   // true
  // } else {
  //   print('Go swimming');
  // }

  // isRaining = false;
  if (!isRaining) {
    // !true = false
    print('Go swimming');
  }

  String age = '30';
  int ageAsNumber = int.parse(age);

  print('Year of birth: ${2026 - ageAsNumber}');

  double price = 4.55;
  print('Price of 1 kg of bananas: ' + price.toString() + ' USD');

  print('Where are you from?');
  String city = stdin.readLineSync()!;
  print('$city is very beautiful place');

  print('Enter first number:');
  String num1 = stdin.readLineSync()!;

  print('Enter second number:');
  String num2 = stdin.readLineSync()!;

  print('Product of two number = ${int.parse(num1) * int.parse(num2)}');

  print('Please, enter a digit from 1 to 3');
  String enteredValue = stdin.readLineSync()!;
  int digit = int.parse(enteredValue);

  switch (digit) {
    case 1:
      print('The number equals to one');
    case 2:
      print('The number equals to two');
    case 3:
      print('The number equals to three');
    default:
      print('Entered digit is unknown!');
  }

  print('What is your name?');
  String name = stdin.readLineSync()!;
  switch (name) {
    case 'Jim' || 'Bob':
      print('Hi boy!');
    case 'Jane' || 'Marry':
      print('Hi girl!');
    default:
      print('Hi');
  }

  print('Length of name is ${name.length} letters.');
}
