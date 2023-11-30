/*
현실세계의 성직자 "클레릭"를 표현하는 클래스 Cleric 를 작성 하시오.
속성이나 동작은 작성 할 필요 없습니다. (내용은 아무것도 작성하지 않아도 됨)
*/

class Cleric {
  String name;
  int hp;
  final maxHp = 50;
  int mp;
  final maxMp = 50;

  Cleric(
    this.name,
    this.hp,
    this.mp,
  );

  void selfAid() {
    if (mp < 5) {
      print("mp가 없습니다.");
    } else if (hp == maxHp) {
      print("hp가 최대입니다.");
    } else {
      mp -= 5;
      print(hp);
      hp = maxHp;
      print(hp);
    }
  }
}

void main() {
  Cleric cleric = Cleric("조상우", 40, 40);
  cleric.selfAid();
}
