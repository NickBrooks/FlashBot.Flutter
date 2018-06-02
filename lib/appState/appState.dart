import '../models/post.dart';
import '../models/authToken.dart';

class AppState {
  final List<Post> feed;
  final AuthToken authToken;

  AppState({this.feed = const [], this.authToken});

  factory AppState.initial() => new AppState(
      feed: [],
      authToken: new AuthToken(token: "", expiration: 0, refreshToken: ""));
}
