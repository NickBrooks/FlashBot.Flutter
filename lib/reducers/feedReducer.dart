import 'package:redux/redux.dart';

import '../actions/postActions.dart';
import '../models/post.dart';

final feedReducer
 = combineReducers<List<Post>>([
  new TypedReducer<List<Post>, AddPostToFeedAction>(_addPostToFeed),
  new TypedReducer<List<Post>, LoadFeedAction>(_loadFeed),
  new TypedReducer<List<Post>, SetNoPostsInFeed>(_setNoPostsInFeed),
]);

List<Post> _addPostToFeed(List<Post> posts, AddPostToFeedAction action) {
  return new List.from(posts)..add(action.post);
}

List<Post> _loadFeed(List<Post> posts, LoadFeedAction action) {
  return action.posts;
}

List<Post> _setNoPostsInFeed(List<Post> posts, SetNoPostsInFeed action) {
  return [];
}
