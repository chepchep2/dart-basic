// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:collection/collection.dart';

/// 연습문제 - 쿼리
class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  @override
  String toString() => 'Trader(name: $name, city: $city)';
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() =>
      'Transaction(trader: $trader, year: $year, value: $value)';
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오.
  print(transactions
      .where((e) => e.year == 2011)
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((e) => e.trader.name)
      .toSet()
      .toList());
  // .length);
  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오.
  print(transactions.map((e) => e.trader.city).toSet().toList());
  // transactions 리스트의 각 요소(e)를 돌면서 e의 trader의 시티를 찾아냄
  print('--------------------');

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오.
  transactions
      .where((element) => element.trader.city == 'Cambridge')
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
      // .toList()
      // .toSet()
      // toSet, toList을 썼지만 효과가 없는 것 같다.
      .forEach((element) {
    print(element.trader.name);
  });

  print('--------------------');

  print(transactions
      .where((element) => element.trader.city == 'Cambridge')
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name)));
  // where를 사용해서 trader의 시티가 케임브릿지인 사람을 찾고 그 사람들을 이름순으로 정렬하였다.
  // 밑의 예제를 통해서 해보았지만 Instance of Transaction이 뜬다.
  print('--------------------');
  final List<int> list1 = [5, 4, 3, 2, 1];
  print(list1.sorted((a, b) => a.compareTo(b)));

  print('--------------------');

  print(transactions
      .where((element) => element.trader.city == 'Cambridge')
      .map((e) => e.trader.name)
      // map을 사용하여 e의 트레이더의 이름을 뽑아낸다.
      .toSet()
      .toList()
    ..sort());
  // .. cascade 연산자를 사용하여 앞의 것들을 다 호출해준다.
  // ..sort를 쓰지않고 .sort를 사용하면 위의 코드를 변수에 할당하여 프린트해줘야한다.
  // .sorted());
  print('--------------------');
  final a = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .map((e) => e.trader.name)
      // map을 사용하여 e의 트레이더의 이름을 뽑아낸다.
      .toSet()
      .toList();
  a.sort();
  print(a);
  // 이렇게

  print('--------------------');

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오.
  print(transactions
      .map((e) => e.trader.name)
      // 각 요소 e의 트레이더의 이름을 뽑아와서 정렬해서 중복되지않게 toSet 해줌
      .sorted((a, b) => a.compareTo(b))
      .toSet()
      .toList());

  print('--------------------');

  // 5. 밀라노에 거래자가 있는가?
  print(transactions.any((element) => element.trader.city == 'Milan'));
  // any를 사용해서 있는지 없는지를 bool값으로 받아온다.
  // 밀라노에 거래자가 있다.
  print('--------------------');

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  print(transactions
      .where((element) => element.trader.city == 'Cambridge')
      .map((e) => '${e.trader.name}의 트랜잭션 값은 ${e.value}')
      .toList());
  // 모든 트랜잭션 값을 출력하니깐 where를 사용해서 케임브릿지 요소를 뽑고
  // map을 사용하여 거래자의 트랜잭션 값은 얼마다 이렇게
  // 리스트에 넣어줘서 프린트하였다.

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  // reduce와 max 사용을 한다.
  print('--------------------');
  print(transactions
      .map((e) => e.value)
      .reduce((value, element) => max(value, element)));
  // map을 사용해서 e의 트랜잭션을 받아고 거기서 max를 써서 최대값을 출력

  // 8. 전체 트랙잭션 중 최소값은 얼마인가?
  print('--------------------');
  print(transactions
      .map((e) => e.value)
      .reduce((value, element) => min(value, element)));
  // 위에랑 반대로 max를 min으로 사용
}
