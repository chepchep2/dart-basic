/*
더 큰 수 판별하기
기능:
A, B 두 정수 중 더 큰 수를 출력
A, B가 같다면 'eq'를 출력

미션:
  1. 10, 20 중 더 큰 수를 출력
  2. 10, 10은 'eq' 출력

출력예시:
20
eq
*/

void main() {
  int a = 10;
  int b = 10;

  if (a == b) {
    print("eq");
  } else if (a > b) {
    print(a);
  } else if (b > a) {
    print(b);
  }
}
