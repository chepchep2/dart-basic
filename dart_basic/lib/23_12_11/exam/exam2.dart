import 'dart:io';

/// 파일을 복사하는 함수를 작성하시오.
/// void copy(String source, String target) {}
/// 원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.

void main() {
  final file = File('save2.txt');
  file.writeAsStringSync('Hello~ save2');
  print(file.readAsStringSync());
  copy('save2.txt', 'target.txt');
}

void copy(String source, String target) {
  final copyFile = File(source);
  final targetFile = File(target);

  targetFile.writeAsStringSync(copyFile.readAsStringSync());
}
