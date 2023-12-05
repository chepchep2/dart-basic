import 'package:dart_basic/23_12_05/character.dart';

import 'package:dart_basic/23_12_05/exam11/slime.dart';

class Dancer extends Character {
  Dancer(super.name, super.hp);

  @override
  void attack(Slime slime) {}
}

abstract interface class Attackable {
  void attack(Slime slime);
}

abstract interface class Speakable {
  void speak();
}

void main() {
  [1, 2, 3, 4, 5].where((e) => e % 2 == 0).forEach(print);
}

class Dog implements Attackable {
  @override
  void attack(Slime slime) {}
}

class Person implements Attackable, Speakable {
  @override
  void attack(Slime slime) {}

  @override
  void speak() {}
}
