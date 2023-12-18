import 'package:dart_basic/23_12_18/exam/exam2.dart';
import 'package:test/test.dart';

void main() {
  test('짝수입니다.', () {
    expect(isEven(4), true);
  });
  test('홀수입니다.', () {
    expect(isEven(5), false);
  });
}
