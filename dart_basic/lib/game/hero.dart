import 'package:dart_basic/game/slime.dart';
import 'package:dart_basic/game/sword.dart';

class Hero {
  String name;
  int hp;
  Sword? sword;

  Hero({
    this.name = "홍길동",
    this.hp = 100,
    this.sword,
  });

  // 메서드: 클래스내에서 클래스를 위한 동작을 하는 함수
  // 함수: 클래스랑 상관 없이 독자적으로 실행되는 함수

  void run() {}

  void sleep() {}

  void bye() {
    print('빠이');
  }

  void die() {
    print('죽었다');
  }

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    print('슬라임의 반격을 받았다.');
    hp -= 10;
    if (hp <= 0) {
      die();
    }
  }
}

void main() {
  final h1 = Hero();
  print(h1.name);
  final h2 = Hero(name: "배트맨");
  print(h2.name);
}
