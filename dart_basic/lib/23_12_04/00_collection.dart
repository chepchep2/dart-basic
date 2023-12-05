void main() {
  // 빈 리스트
  final List<int> numbers = [];
  // <> 제네릭이다. 안에 타입을 쓴다.

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.insert(0, 5);
  // print(numbers);

// 안티패턴 1
  final numbers2 = [];
  numbers2.add(1);
  numbers2.add('1');
  numbers2.add(true);
  numbers2.add(null);
  // print(numbers2);

  // 안티패턴 2
  final List numbers3 = [];

  // 올바른 방법
  final numbers4 = <int>[];

  // 절대악
  dynamic a = 10;

  a = 'ㅁㅁㅁ';

  final List<String> names = [];
  names.add('홍길동');
  names.add('한석봉');
  names.add('신사임당');

  print(names[0]);

  print('-------------');

  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print('--------------');

  for (final name in names) {
    print(name);
  }

  print('--------------');

  for (var e in names) {
    print(e);
  }

  print('--------------');
  print('--------------');

  names.forEach(print);

  print('--------------');

  List<int> subjects = [10, 50, 100, 100, 50];

  final iterator = subjects.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
  print('--------------');

  Set<int> lottoSet = {1, 2, 3, 4, 5, 6};

  final iterator2 = lottoSet.iterator;
  while (iterator2.moveNext()) {
    print(iterator2.current);
  }
}
