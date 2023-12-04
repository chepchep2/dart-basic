void main() {
  // 빈 리스트
  final List<int> numbers = [];
  // <> 제네릭이다. 안에 타입을 쓴다.

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.insert(0, 5);
  print(numbers);

// 안티패턴 1
  final numbers2 = [];
  numbers2.add(1);
  numbers2.add('1');
  numbers2.add(true);
  numbers2.add(null);
  print(numbers2);

  // 안티패턴 2
  final List numbers3 = [];

  // 올바른 방법
  final numbers4 = <int>[];

  // 절대악
  dynamic a = 10;

  a = 'ㅁㅁㅁ';
}
