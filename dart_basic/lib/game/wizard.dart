import 'package:dart_basic/game/hero.dart';

class Wizard {
  String name;
  int hp;

  Wizard({
    required this.name,
    required this.hp,
  });

  void hel(Hero hero) {
    hero.hp += 10;
    print("${hero.name}의 hp를 10 회복했습니다.");
  }
}
