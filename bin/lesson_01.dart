void main() {
  print('Hello world!'); // распечатка фразы
  print(54);
  print(5.35);

  // Комментарий
  // print(1);
  /*
  Многострочные
  комментарии
  */

  // Переменные и типы данных

  String myName = 'Jim Brown'; // строковый тип данных
  int myAge = 25; // целочисленный тип данных
  double myHeight = 175.5; // тип данных с плавающей точкой
  bool isTeacher = true; // логический тип данных
  print(myName);
  print(myAge);
  print(myHeight);
  print(isTeacher);

  String myjob; // Объявление переменной (создание)
  // print(myjob);
  myjob = 'Developer'; // присвоение значения переменной
  int mySalary = 2000;
  print(myjob);
  print(mySalary);
  myjob = 'Taxi driver'; // изменение значения переменной
  print(myjob);
  mySalary = mySalary - 500;
  print(mySalary);

  // int myname = 67;
  String friendsName1 = 'Jane';
  String friendsName2 = 'Marry';
  // String friend name = 'Marry'; Ошибка: пробелы в имене переменной
  // String friends_name_3 = 'Peter'; // Допустимо, но не принято в стиле Dart

  // Конкатенация - соединение строк
  print('My name is ' + myName + '. And I work as ' + myjob + '.');

  // Интерполяция строк
  print('My name is $myName. And I work as $myjob. I am $myAge year old.');
  print('I was born in ${2026 - myAge}');
  print('My salary is ${mySalary}USD.');

  // Экранирование строк
  print('My salary is $mySalary\$.');
  print("I'm learning Dart Programming language.");
  print("I'm learning \"Dart Programming\" language.");
  String multiLinePhrase =
      '''This is multi-line String It can be multi It can be multi

          It can be multi It can be multi''';
  print(multiLinePhrase);

  String sampleString = '  Hello Dart!  ';
  print(sampleString.toUpperCase());
  print(sampleString.trim());
  print(sampleString.replaceAll('Dart', 'Flutter'));
  print(sampleString.contains('Java'));

  // Арифметические операторы
  print(1 + 4);
  print(9 - 2);
  print(5 * 6);
  print(10 / 2);
  print(10 ~/ 2); // целочесленное деление
  print(13 / 2);
  print(13 ~/ 2);
  print((13 / 2).round());
  print(23 % 5); // остаток от деления
  
  print(5 + 3 * 4 / 2 - 1);
  print((5 + 3) * 4 / (2 - 1));

  print('My salary with bonus: ${mySalary + mySalary * 0.1}');


  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать

  var someText = 'Hello';
  print(someText.toLowerCase());

  var price = 43;
  print(price + price);
  // price = 'Thousand';

  final String constantText = 'This is unchangable text';
  // constantText = 'New value';

String? city; // null == ничего
print(city);
}
