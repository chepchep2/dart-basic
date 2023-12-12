/// 다음과 같은 프로그램을 작성, 실행 후 runtime error 를 발생하시오.
/// final numString = '10.5';
/// int num = int.parse(numString);
/// print(num);

void main() {
  final numString = '10.5';
  // int num = int.parse(numString);
  // print(num);

  // try {
  //   int num = int.parse(numString);
  //   print(num);
  // } catch (e) {
  //   print(0);
  // }

  try {
    int num = int.parse(numString);
    print(num);
  } catch (e) {
    print(0);
  }
}
