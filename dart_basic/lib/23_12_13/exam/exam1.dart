import 'dart:io';

void main() {
  final file = File('sample.csv');

  file.writeAsString('1, 홍길동, 30');

  copy('sample.csv', 'sample_copy.csv');
}

void copy(String source, String target) async {
  // final sourceFile = File(source);
  // final targetFile = File(target);

  // await targetFile.writeAsString(sourceFile.readAsString());
  await File(source).copy(target);
}
