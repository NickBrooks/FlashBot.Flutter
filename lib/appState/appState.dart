import '../models/post.dart';

class AppState {
  final List<Post> feed;

  AppState({this.feed = const []});

  factory AppState.initial() => new AppState(feed: []);
}
