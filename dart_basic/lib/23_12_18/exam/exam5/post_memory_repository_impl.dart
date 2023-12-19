import 'package:dart_basic/23_12_18/exam/exam5/post_repository.dart';
import 'package:dart_basic/23_12_18/post.dart';

class PostMemoryRepositoryImpl implements PostRepository {
  List<Post> _posts = [];

  @override
  Future<void> addPost(Post post) async {
    _posts.add(post);
  }

  @override
  Future<void> deletePost(Post post) async {
    _posts.remove(post);
  }

  @override
  Future<List<Post>> getPosts() async {
    return _posts;
  }

  @override
  Future<void> updatePost(Post post) async {
    _posts = _posts.map((e) {
      if (post.id == e.id) {
        return post;
      }
      return e;
    }).toList();
  }
}
