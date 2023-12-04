/// 연습문제 2-2
/// 다음을 수행하는 코드를 작성하시오.
/// 1) 이름을 가지는 Person 클래스를 작성하시오. Person은 반드시 이름을 포함해야합니다.
/// 2) 이름이 '홍길동', '한석봉'인 Person 인스턴스를 생성하고, List에 담습니다.
/// 3) List에 담긴 모든 Person 인스턴스의 이름을 표시하이소.
///

class Person {
  final String name;

  Person({
    required this.name,
  });
}

void main() {
  Person person1 = Person(name: '홍길동');
  Person person2 = Person(name: '한석봉');

  List<String> persons = [];
  persons.add(person1.name);
  persons.add(person2.name);

  print(persons);
}
