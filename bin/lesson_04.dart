void main() {
  // DRY - Don't repeat yourself
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  calculatePerimeter(4.5, 5.0, 'Аудитория 4');
  calculatePerimeter(10, 7, 'Холл');
  calculatePerimeter(4.5, 3, 'Кухня');

  int areaOfAuditory4 = calculateArea(4.5, 5.0);
  int areaOfHall = calculateArea(10, 7);
  int areaOfKitchen = calculateArea(4.5, 3);

  print('Площадь комнаты Аудитория 4: $areaOfAuditory4 м²');
  print('Площадь комнаты Холл: $areaOfHall м²');
  print('Площадь комнаты Кухня: $areaOfKitchen м²');
  print('ОБЩАЯ ПЛОЩАДЬ: ${areaOfAuditory4 + areaOfHall + areaOfKitchen} м²');

  double costForBishkek = shippingCost(weight: 4, city: 'Бишкек');
  double costForOsh = shippingCost(city: 'Ош', weight: 10, baseCost: 160);
  print('Цена доставки в Бишкек: $costForBishkek сом');
  print('Цена доставки в Ош: $costForOsh сом');
  
  print(globalVariable);
}

double shippingCost({
  required double weight,
  required String city,
  int baseCost = 200,
}) {
  // функция с именноваными параметрами и с возвращаемым значением
  double price = weight * baseCost;
  if (city != 'Бишкек') {
    price *= 2;
  }
  return price;
}

int calculateArea(double lenght, double width) {
  // функция с позиционными параметрами и с возвращаемым значением
  double area = lenght * width;
  return area.round();
}

void calculatePerimeter(double lenght, double width, String room) {
  // функция с позиционными параметрами и без возвращаемого значения
  double perimeter = 2 * (lenght + width);
  print('Периметр комнаты $room: = $perimeter м.');
}

void makeTea() {
  // функция без параметров и без возвращаемого значения
  print('Вскипятить воду');
  print('Насыпать заварку');
  print('Дать настояться');
  print('Налить в чашку');
  print('Добавить молоко или сахар по-вкусу');
}

void scopeExample(int paramVariable) {
  print(paramVariable);
  // print(localVariable); // Ошибка! Переменная не видна в этой области видимости
  String localVariable = 'Я локальная переменная';
  print(localVariable);
  if (paramVariable < 0) {
    print(localVariable); // Локальная переменная видна внутри вложенных областей видимости
    int ifBlockVariable = 8;
    print(ifBlockVariable);
  }
  // print(ifBlockVariable); // Ошибка! Переменная не видна вне блока if
  print(globalVariable);
}

String globalVariable = 'Я глобальная переменная';

// End of program