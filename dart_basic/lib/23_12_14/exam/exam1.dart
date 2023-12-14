import 'dart:convert';

import 'package:dart_basic/23_12_14/exam/movie_info.dart';
import 'package:http/http.dart' as http;

void main() async {
  MovieList movie = await movieInfo();
  for (var element in movie.results) {
    print(element.toJson());
  }
}

Future<MovieList> movieInfo() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

  final jsonString = response.body;

  final json = jsonDecode(jsonString);

  return MovieList.fromJson(json);
}
