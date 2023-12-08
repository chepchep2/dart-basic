void main() {
  // dynamic i = 10;

  // i.forEach((num) => print(num));
  // print(i.length);
  // i[0] = 10;

  Object o = 10;

  Pocket<int> pocket = Pocket();
  pocket.put(10);

  var data = pocket.get();
  print(data.runtimeType);

  if (data != null) {
    print(data + 10);
  }

  AuthState authState = AuthState.bbb;
  // if (authState == AuthState.aaa) {
  //   print('aaa');
  // } else if (authState == AuthState.bbb) {
  //   print('bbb');
  // } else if (authState == AuthState.ccc) {
  //   print('ccc');
  // } else {
  //   print('ddd');
  // }

  switch (authState) {
    case AuthState.aaa:
      print('aaa');
      break;
    case AuthState.bbb:
      print('bbb');
      break;
    case AuthState.ccc:
      print('ccc');
      break;
    case AuthState.ddd:
      print('ddd');
      break;
  }
}

enum AuthState {
  aaa,
  bbb,
  ccc,
  ddd,
}

// class Pocket {
//   Object? _data;

//   void put(Object data) => _data = data;

//   Object? get() => _data;
// }

class Pocket<E> {
  E? _data;
  void put(E data) => _data = data;
  E? get() => _data;
}
