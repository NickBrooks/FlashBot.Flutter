import '../models/post.dart';

class AddPostToFeedAction {
  final Post post;

  AddPostToFeedAction(this.post);
}

class LoadFeedAction {
  final List<Post> posts;

  LoadFeedAction(this.posts);
}

class SetNoPostsInFeed {}