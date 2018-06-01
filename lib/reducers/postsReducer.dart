import 'package:redux/redux.dart';

import '../actions/postActions.dart';
import '../models/post.dart';

final postsReducer = combineReducers<List<Post>>([
  new TypedReducer<List<Post>, AddPostAction>(_addPost),
  new TypedReducer<List<Post>, PostsLoadedAction>(_setLoadedPosts),
  new TypedReducer<List<Post>, PostsNotLoadedAction>(_setNoPosts),
]);

List<Post> _addPost(List<Post> posts, AddPostAction action) {
  return new List.from(posts)..add(action.post);
}

List<Post> _setLoadedPosts(List<Post> posts, PostsLoadedAction action) {
  return action.posts;
}

List<Post> _setNoPosts(List<Post> posts, PostsNotLoadedAction action) {
  return [];
}
