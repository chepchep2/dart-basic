/*
등차수열 예제 생성기 만들어 보기

당신은 초등학교 수학선생님이빈다. 학생들에게 등차수열에 대한 설명자료를 만들기 위해 예제를 만들어야 합니다.
매번 만들기 어려워 등차수열 예제 생성기를 만들려고 합니다. 어떻게 할까요?

  설명:
    - 등차수열이란?
      5 8 11 14 17 20 23 26 29 32
      첫 번째 숫자가 5에서 3 씩 증가 해가는 것을 알 수 있습니다.
      일반적으로 이것을 첫항이 5, 공차가 3인 등차수열이라고 합니다.
      이런 수열을 출력하는 프로그램을 만들어 보자.

  미션:
    - 첫 항 5, 공차 10인 등차수열을 10번째까지 출력해 보세요
  
  출력예시:
    5 15 25 35 45 55 65 75 85 95
*/

void main() {
  int a = 5;

  for (int i = 0; i < 10; i++) {
    int result = a + i * 10;
    print(result);
  }

  print(solution(5, 10));
  print(solution(3, 3));
  print(solution(1, 3));
}

String solution(int m, int n) {
  String result = '';

  for (int i = 1; i < 10; i++) {
    // 1번째: 5 + 10 * 0 = 5
    // 2번째: 5 + 10 * 1 = 15;
    // 3번째: 5 + 10 * 2 = 25;
    // ...
    // m + n * i
    result += '${m + n * i} ';
  }
  return result;
}
