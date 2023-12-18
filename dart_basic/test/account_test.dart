import 'package:dart_basic/23_12_18/account.dart';
import 'package:test/test.dart';

void main() {
  test('계좌 이체가 잘 동작해야 한다', () {
    Account a = Account(owner: '홍길동', balance: 1000);
    Account b = Account(owner: '한석봉', balance: 0);

    a.transfer(b, 500);

    expect(a.balance, 500);
    expect(b.balance, 500);

    expect(() => a.transfer(b, 600), throwsException);
  });
}
