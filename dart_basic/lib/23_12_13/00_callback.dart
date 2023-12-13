void performOperation(int a, int b, int Function(int a, int b) callback) {
  print('Operation started with $a and $b');
  int result = callback(a, b);
  print('result: $result');
}

int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

void myFunc(void Function() onTap) {
  onTap();

  onTap();
}

void main() async {
  performOperation(5, 3, (a, b) => a * b);
  performOperation(10, 5, subtract);

  // callback
  myFunc(() {
    print('벨 울림');
  });

  // int Function(int, int) addFunction = add;
  // print(addFunction.call(1, 20));
  // print('----------------------');
  // print(addFunction(20, 20));

  // Future.delayed(Duration(seconds: 3));

  // print('끝일까?');

  // saveDb('유저 데이터').then((_) {
  //   print('진짜 끝');
  // });

  // myFunction();

  await saveDb('유저 데이터');
}

Future<void> saveDb(user) async {
  print('DB 저장 시작');

  // 오래 걸리는 애
  await Future.delayed(Duration(seconds: 2));

  print('DB 저장 끝');
}

void myFunction() {
  print('start');

  Future.delayed(Duration(seconds: 2), () {
    print('2 sec');
  });

  print('end');
}
