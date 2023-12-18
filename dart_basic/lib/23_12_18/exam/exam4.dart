/// 연습문제 4
/// 문자열 뒤집기 함수:
/// 입력으로 문자열을 받아들이는 함수 reverseString을 작성하세요.
/// reverseString 함수는 입력된 문자열을 뒤집어 반환해야 합니다.
/// 예를 들어, reverseString("Hello")는 "olleH"를 반환해야 합니다.

String reverseString(String str) {
  final reverseStr = str.split('').reversed.join();

  /// split('')로 문자 1개씩 분리해서 리스트로 변환
  /// reversed는 리스트의 저장된 걸 역순으로 변경
  /// join()은 리스트의 요소들을 하나의 문자열로 합치고 리턴
  return reverseStr;
}
