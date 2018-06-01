import '../models/post.dart';

class AddPostAction {
  final Post post;

  AddPostAction(this.post);
}

class PostsLoadedAction {
  final List<Post> posts;

  PostsLoadedAction(this.posts);
}

class PostsNotLoadedAction {}