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
}

class Person extends Object {}
