/*
1-1
현실세계의 성직자 "클레릭"를 표현하는 클래스 Cleric 를 작성 하시오.
속성이나 동작은 작성 할 필요 없습니다. (내용은 아무것도 작성하지 않아도 됨)

1-2
성직자는 용사 처럼 이름과 HP를 가지고 있고, 추가로 마법을 사용하기 위한 MP를 가지고 있다.
연습 1-1에서 작성한 내용이 없는 Cleric 클래스에 "이름", "HP", "최대 HP", "MP", "최대 MP"를 속성으로 추가 하시오.
또한 HP와 최대 HP는 정수로 초기치 50, MP와 최대 MP는 정수로 초기치 10으로 하고, 최대 HP와 최대 MP는 상수 필드로 선언 하시오.

1-3
성직자는 "셀프 에이드"라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP를 최대 HP 까지 회복할 수 있다.
연습 1-2 에 선언한 Cleric 클래스에 "selfAid()" 메소드를 추가 하시오.
또한, 이 메소드는 인수가 없고, 리턴 값도 없다.

1-4
성직자는 "기도하기" (pray) 라는 행동을 취할 수 있고, 자신의 MP를 회복한다.
회복량은 기도한 시간(초)에 랜덤하게 0 ~ 2포인트의 보정을 한 양이다. (3초 기도하면 회복량은 3 ~ 5 포인트).
단, 최대 MP 보다 더 회복하는 것은 불가능 하다.
연습 1-3에서 선언한 Cleric 클래스에 "pray()" 메소드를 추가하시오.
이 메소드는 인수에 "기도할 시간(초)"를 지정할 수 있고, 리턴 값은 "실제로 회복된 MP 양"을 반환한다.
*/

import 'dart:math';

class Cleric {
  String name;
  int hp;
  final maxHp = 50;
  int mp;
  final maxMp = 10;

  Cleric(
    this.name,
    this.hp,
    this.mp,
  );

  void selfAid() {
    if (mp < 5) {
      // mp가 5보다 작으면 HP를 회복할 수 없다.
      print("mp가 없습니다.");
    } else if (hp == maxHp) {
      // hp가 최대HP보다 넘을 수 없다.
      print("hp가 최대입니다.");
    } else {
      // mp 5 소비하면 hp를 최대 hp까지 회복한다.
      mp -= 5;
      // mp = mp - 5
      print("회복하기 전 $hp");
      hp = maxHp;
      print("회복 후 $hp");
    }
  }

  int pray(int time) {
    // 현재 mp값
    int currentMp = mp;

    // 랜덤
    Random random = Random();
    int heal = random.nextInt(3) + time;
    // random.nextInt(2) 하면 0 ~ 1만 나온다.
    // time을 더해주는 이유는 time에 랜덤하게 0 ~ 2 포인트를 더해준 값으로 회복 되기 때문에.
    print("현재 mp: $mp");
    print("회복량 $heal");

    mp += heal;
    print("회복 후 mp: $mp");
    // mp = mp + heal

    if (mp > maxMp) {
      // mp가 최대 Mp보다 크면 의미가 없다. 걍 maxMp
      mp = maxMp;
      // 오바되도 최대로 50
    }
    return mp - currentMp;
    // 현재의 mp를 구하는 것이 아니라 실제로 회복된 mp를 반환해야한다.
  }
}

void main() {
  Cleric cleric = Cleric("조상우", 40, 4);
  cleric.selfAid();
  print(cleric.pray(3));
}
