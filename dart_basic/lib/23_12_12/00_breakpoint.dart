import 'package:dart_basic/23_12_05/exam11/hero.dart';

void main() {
  final heroes = <Hero>{};
  final h1 = Hero(name: '슈퍼맨', hp: 100);
  final h2 = Hero(name: '슈퍼맨', hp: 100);

  heroes.add(h1);

  heroes.remove(h2);
}
