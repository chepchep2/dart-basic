import 'dart:convert';

import 'package:dart_basic/23_12_14/exam/movie_detail.dart';
import 'package:http/http.dart' as http;

void main() async {
  MovieDetail detail = await getMovieDetail(12);
  print(detail.toJson());
}

Future<MovieDetail> getMovieDetail(int movieId) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

  final jsonString = response.body;

  final json = jsonDecode(jsonString);

  return MovieDetail.fromJson(json);
}
