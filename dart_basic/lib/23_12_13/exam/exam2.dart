import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}

void main() async {
  print(await getMovieInfo());
  print('------------------------------');
  // getMovieInfo가 비동기 이기때문에 async-await를 써서 출력 가능
  final result = await getMovieInfo();
  final result2 = jsonDecode(result);
  print(result2);
  // 여기서 Map형식으로 오는데 director 키의 밸류에 어떻게 접근하는지 모르겠다..
  print('------------------------------');
  print(result2['director']);
  // Map 에서 [] 연산자는 해당 키에 대응하는 값을 반환한다고 한다.
}
