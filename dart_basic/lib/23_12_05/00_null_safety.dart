void main() {
  // non nullable
  int num1 = 10;

  // nullable
  int? num2;

  // 안전한 호출
  print(num2?.isEven ?? "값 없음");

  // int? -> int
  if (num2 != null) {
    num1 = num2;
  }

  num2 = num1;
}
