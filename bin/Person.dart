class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  // Person.ageBelow50(this.name, this.age) {
  //   print(name);
  // }
  // Person.ageAbove50(this.name, this.age) {
  //   print(name);
  // }

  // void sayHai() {
  //   print('hiiiiiiii');
  // }

  int get helloAge {
    return _age;
  }

  set setAge(int value) {
    _age = value;
  }
}
