void main() {
  String s = "조";
  // new가 있다고 생각, 100번 주소
  String s1 = "$s상우";
  // new가 있다고 생각, 200번 주소
  s += '성우';
  // new '조성우', 300번 주소

  print(s);
  print(s1);
  print(s.hashCode);
  print(s1.hashCode);

  // String 인스턴스 갯수
  for (int i = 0; i < 100; i++) {
    s += '$i';
  }

  StringBuffer sb = StringBuffer('Dart');
  // print(sb.toString());
  print(sb.hashCode);
  print(sb);
  sb.write(' and');
  print(sb);
  sb.write(' Flutter');
  print(sb);
  print(sb.hashCode);
}
