import 'dart:io';

void main() async {
  final file = File('sample.csv');
  file.writeAsString('1, 홍길동, 30 \n2, 한석봉, 20');
  // sample.csv파일 생성 후 내용 추가
  // \n을 사용해서 줄 바꿈

  try {
    copy('sample.csv', 'sample_copy.csv');
    // 에러 날 수 있는 코드
  } catch (e) {
    print(e);
    // 에러 내용 출력
  }
}

void copy(String source, String target) async {
  final sourceFile = File(source);
  final targetFile = File(target);

  if (await sourceFile.exists() == false) {
    // throw Exception('파일 없음');
    // 위 예외처리로는 되지 않는데 맞는 코드를 못찾음
    print('파일 없음');
    // exists라는 함수를 알게되었음
    // Future를 반환하기때문에 await 키워드 사용
    // sourceFile이 존재하지 않는지 여부 파악
  }

  final content = await sourceFile.readAsString();
  // sourceFile의 내용을 content에 담는다.

  if (content.contains('한석봉')) {
    final changeContent = content.replaceAll('한석봉', '김석봉');
    // content에 한석봉이라는게 있는지 파악
    // 있으면 replaceAll을 써서 내용 변경

    await targetFile.writeAsString(changeContent);
    // changeContent의 내용을 targetFile에 넣는다.
  } else {
    // throw Exception('한석봉 없음');
    // 이 예외 처리도 안됨
    print('한석봉 없음');
  }
}
