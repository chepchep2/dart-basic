import 'package:dart_basic/23_12_05/exam11/hero.dart';

void main() {
  // 런타임
  dynamic dynamicVar = Hero(name: 'name', hp: 100);
  int i = 10;
  dynamicVar = 1;

  // 컴파일타임
  Object object = Hero(name: 'name', hp: 100);

  print(object);

  final heros = <Hero>[];

  final h1 = Hero(name: '슈퍼맨', hp: 100);
  final h2 = Hero(name: '슈퍼맨', hp: 100);

  heros.add(h1);
  print(heros.length);

  heros.add(h2);
  print(heros.length);

  final Set<Hero> heroes1 = {};

  final h3 = Hero(name: '슈퍼맨', hp: 100);
  final h4 = Hero(name: '슈퍼맨', hp: 100);

  heroes1.add(h3);
  print(heroes1.length);

  heroes1.add(h4);
  print(heroes1.length);
  // Hero가 2개(2번) 불러와서
}

class Person extends Object {}
