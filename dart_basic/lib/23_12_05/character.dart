import 'package:dart_basic/23_12_05/exam11/slime.dart';

abstract class Character {
  String name;
  int hp;

  Character(
    this.name,
    this.hp,
  );

  void run() {
    print('뛰었다');
  }

  void attack(Slime slime);
}
