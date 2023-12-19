import 'package:dart_basic/23_12_18/exam/exam5/post_repository.dart';
import 'package:dart_basic/23_12_18/post.dart';

class PostManager {
  final PostRepository _postRepository;

  PostManager(this._postRepository);

  Future<void> addPost(Post post) async {
    return await _postRepository.addPost(post);
  }

  Future<void> deletePost(Post post) async {
    return await _postRepository.deletePost(post);
  }

  Future<void> updatePost(Post post) async {
    return await _postRepository.updatePost(post);
  }

  Future<List<Post>> getPosts() async {
    return await _postRepository.getPosts();
  }
}
