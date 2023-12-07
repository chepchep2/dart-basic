import 'dart:math';

import 'package:dart_basic/game/slime.dart';
import 'package:dart_basic/game/sword.dart';

class Hero {
  static int money = 100;

  static void moneyRandom() {
    Hero.money = Random().nextInt(1000);
  }

  String name;
  int _hp;
  Sword? sword;

  Hero({
    required this.name,
    required int hp,
    this.sword,
  }) : _hp = hp;

  int get hp => _hp;

  set hp(int value) {
    if (value < 0) {
      throw Exception('hp는 0보다 작을 수 없다');
    }

    _hp = value;
  }

  void attack(Slime slime) {
    slime.hp -= 10;
    print('10의 데미지!!');
  }

  void run() {
    print('뛰었다.');
  }

  @override
  String toString() {
    return 'Hero{}';
  }
}

void main() {
  print(Hero.money);

  final hero = Hero(name: '용사', hp: 100);
  hero.name = 'aa';
  print(hero.hp);
  hero.hp = 100;

  Hero.moneyRandom();
}
