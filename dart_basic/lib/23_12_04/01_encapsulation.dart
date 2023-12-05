import 'package:dart_basic/game/hero.dart';

class Inn {
  void checkIn(Hero hero) {
    hero.hp = -100;
  }
}

class King {
  void callHero(Hero hero) {
    print('용사님, 저희 왕국에 와주셔서 감사합니다.');
    print('용사님의 이름은 ${hero.name}이고, hp는 ${hero.hp}입니다.');
    hero.bye();
  }
}

void main() {
  King king = King();
  king.callHero(Hero(name: "배트맨", hp: 10));
}

// class Vehicle {
//   String make;
//   String model;
//   int manufactureYear;
//   int vehicleAge;
//   String color;

//   int get age {
//     return vehicleAge;
//   }

//   set age(int currentYear) {
//     vehicleAge = currentYear - manufactureYear;
//   }
// }
