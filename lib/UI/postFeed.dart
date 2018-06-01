import '../models/post.dart';
import '../widgets/postCardWidget.dart';

List<PostCardWidget> postFeed(List<Post> posts) {
  // sort by date
  posts.sort((a, b) => b.dateCreated.millisecondsSinceEpoch
      .compareTo(a.dateCreated.millisecondsSinceEpoch));

  return posts.map((post) => new PostCardWidget(post)).toList();
}
