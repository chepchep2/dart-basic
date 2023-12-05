import 'package:dart_basic/23_12_05/hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int _attackCount = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_attackCount > 0) {
      print('추가로, 독 포자를 살포했다!');
      print(hero.hp);
      hero.hp -= (hero.hp * 0.2).toInt();
      print('${hero.hp}포인트의 데미지');
      _attackCount--;
    }
  }
}

void main() {
  Hero hero = Hero(name: '조상우', hp: 100);

  PoisonSlime poisonSlime = PoisonSlime('A');
  poisonSlime.attack(hero);
}
