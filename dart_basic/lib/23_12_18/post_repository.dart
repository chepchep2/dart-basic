import 'package:dart_basic/23_12_18/post.dart';

abstract interface class PostRepository {
  Future<List<Post>> getPost();
}
