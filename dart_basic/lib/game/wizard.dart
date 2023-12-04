import 'package:dart_basic/game/wand.dart';

/// 연습문제 10-1
/// 다음 2개의 클래스 "Wizard(마법사)", "Wand(지팡이)"를 작성하시오. 마법사는 지팡이를 들 수 있습니다.
/// 연습문제 10-2
/// 문제 10-1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
/// 부정한 값이 설정 될 경우에는 "Exception("에러메세지");" 를 작성하여 프로그램을 중단시킵니다.
///
/// 1. 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다.
/// 2. 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
/// 3. 마법사의 지팡이는 null 일 수 없다.
/// 4. 마법사의 MP는 0 이상이어야 한다.
/// 5. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

class Wizard {
  final String _name;
  final int _hp;
  final int _mp;
  Wand? wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
  })  : _name = name,
        _hp = hp,
        _mp = mp {
    if (name.length < 3) {
      throw Exception("에러메세지");
    }
    if (mp < 0) {
      throw Exception("에러메세지");
    }

    if (wand == null) {
      throw Exception("에러메세지");
    }

    if (hp < 0) {
      hp = 0;
    }
  }
}
