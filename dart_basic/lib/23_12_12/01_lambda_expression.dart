void main() {
  var list = [1, 2, 3];

  list.forEach(printElement);
  list.forEach(print);

  print('--------------------');

  final items = [1, 2, 3, 4, 5];

  for (int i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      print(items[i]);
    }
  }
  print('--------------------');
  print(items.where((element) => element % 2 == 0));

  print('--------------------');
  print(items.where((element) => element % 2 == 0).toList());

  print('--------------------');

  for (int i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      print('숫자 ${items[i]}');
    }
  }

  print('--------------------');

  items
      .where((element) => element % 2 == 0)
      .map((e) => '숫자는 $e')
      .forEach(print);

  print('--------------------');

  final result = [];
  for (var e in items) {
    if (e % 2 == 0) {
      result.add(e);
    }
  }
  print(result);
  print('--------------------');
  final result2 = items.where((element) => element % 2 == 0).toList();
  print(result2);
  print('--------------------');

  final items2 = [1, 2, 2, 3, 3, 4, 5];

  var result3 = [];
  var temp = <int>{};
  for (var i = 0; i < items2.length; i++) {
    if (items2[i] % 2 == 0) {
      temp.add(items2[i]);
    }
  }

  result3 = temp.toList();
  print(result3);
  print('--------------------');

  final result4 = items2.where((element) => element % 2 == 0).toSet().toList();
  print(result4);
  print('--------------------');

  var numbers = [1, 2, 3, 4, 5];

  var sum = numbers.reduce((currentSum, nextNumber) => currentSum + nextNumber);

  print("총합: $sum"); // 출력: 총합: 15

  print('--------------------');

  var words = ['Hello', 'world', 'Dart', 'is', 'awesome'];

  var sentence = words.reduce((result, word) => '$result $word');

  print("문장: $sentence"); // 출력: 문장: Hello world Dart is awesome
}

void printElement(int element) {
  print(element);
}
