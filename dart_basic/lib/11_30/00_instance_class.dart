import 'package:dart_basic/11_30/hero.dart';

void main() {
  final hero = Hero("용사", 100);

  final car = Car();

  Door door = Door();
  // 기본 자료형
  // int, double, bool, String

  // 새로운 타입 만들때 => 클래스 작성
}

class Car {
  // 멤버변수, field, 전역변수, 프로퍼티
  List<Door> doors = [];
  List<Wheel> wheels = [];
  String color = "red";
  String number = "18어3300";
  double speed = 0.0;

  bool isStarting = false;

  void start() {
    isStarting = true;
  }

  void drive() {
    if (isStarting) {
      // gogogogo
    }
  }
}

class Wheel {}

class Door {}
