import 'package:dart_basic/game/hero.dart';
import 'package:dart_basic/game/sword.dart';

void main() {
  final sword = Sword(name: "불검", damage: 0);

  final hero1 = Hero(name: "조상우", hp: 100, sword: sword);
  print(hero1.hp);
  final hero2 = Hero(name: "배트맨", hp: 100);
  print(hero2.name);
  final hero3 = Hero(name: "손오공");
  print(hero3.name);
  print(hero3.hp);
  final hero4 = Hero();
  print(hero4.name);
  final hero5 = Hero(sword: sword);
  print(hero5.sword);
}
