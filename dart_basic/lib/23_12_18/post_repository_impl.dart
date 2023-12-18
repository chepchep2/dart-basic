import 'dart:convert';

import 'package:dart_basic/23_12_18/post.dart';
import 'package:dart_basic/23_12_18/post_repository.dart';
import 'package:http/http.dart' as http;

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPost() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Post.fromJson(e)).toList();
  }
}
