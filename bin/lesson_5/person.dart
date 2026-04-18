class Person {
  String _name;
  int _age;

  Person(this._age, this._name);

  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print('Wrong value, age must be positive number.');
    }
  }

  String get name => _name;

  int get age => _age;

  void displayInfo() {
    print('$_name $_age years old. Birth year: ${_calculateBirthYear()}');
  }

  int _calculateBirthYear() {
    return 2026 - _age;
  }
}
