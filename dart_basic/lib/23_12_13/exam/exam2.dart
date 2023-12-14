import 'dart:convert';

class MovieInfo {
  String title;
  String director;
  int year;

  MovieInfo({
    required this.title,
    required this.director,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'director': director,
      'year': year,
    };
  }

  factory MovieInfo.fromMap(Map<String, dynamic> map) {
    return MovieInfo(
      title: map['title'] as String,
      director: map['director'] as String,
      year: map['year'] as int,
    );
  }
}

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
  // print(await getMovieInfo());
  // print('------------------------------');
  // // getMovieInfo가 비동기 이기때문에 async-await를 써서 출력 가능
  // final String result = await getMovieInfo();
  // final Map<String, dynamic> result2 = jsonDecode(result);
  // print(result2);
  // // 여기서 Map형식으로 오는데 director 키의 밸류에 어떻게 접근하는지 모르겠다..
  // print('------------------------------');
  // print(result2['director']);
  // // Map 에서 [] 연산자는 해당 키에 대응하는 값을 반환한다고 한다.

  final String movieInfoJsonString = await getMovieInfo();
  final MovieInfo movieInfo =
      MovieInfo.fromMap(jsonDecode(movieInfoJsonString));
  print(movieInfo.director);
}
