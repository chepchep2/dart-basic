import 'dart:io';

void main() {
  // Open
  final file = File('save.txt');

  // 읽거나 쓰고 닫는다
  // file.writeAsStringSync('Hello World');
  final text = file.readAsStringSync();
  print(text);
}
