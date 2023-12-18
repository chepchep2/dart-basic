import 'package:dart_basic/23_12_18/exam/exam3.dart';
import 'package:test/test.dart';

void main() {
  test('가장 큰값', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
  });

  test('가장 큰값', () {
    expect(findMax([1, 2, 3, 4, 5]), 5);
  });

  test('가장 큰값', () {
    expect(findMax([10, 25, 32, 400, 56]), 400);
  });
}
