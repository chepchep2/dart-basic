import 'package:dart_basic/12_4/exam2.dart';

/// 연습문제 2-3
/// 연습문제 2-3에서 작성한 Person 클래스로 생성한 '홍길동', '한석봉'의 나이를 각각 20,
/// 25살 이라고 할 때, 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
///
/// 그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
///

void main() {
  Map<Person, int> people = {
    Person(name: '홍길동'): 20,
    Person(name: '한석봉'): 25,
  };

  for (var e in people.entries) {
    print("${e.key.name}의 나이는 ${e.value}살");
  }
}
