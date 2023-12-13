import 'dart:async';

Future<String> timeoutFuture() async {
  // await Future.delayed(Duration(seconds: 6)).timeout(Duration(seconds: 5));
  // try {
  //   await Future.delayed(Duration(seconds: 6));
  //   return 'ok';
  // } catch (e) {
  //   await Future.delayed(Duration(seconds: 6)).timeout(Duration(seconds: 5));
  //   return 'timeout';
  // }

  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  // print(await timeoutFuture());

  try {
    await timeoutFuture().timeout(Duration(seconds: 5));
    // Google에 Future.timeout을 검색해서 어떻게 사용하는 지 검색해보고 적용하였다.
  } catch (e) {
    throw TimeoutException('timeout');
    // print('timeout');
  }
}
