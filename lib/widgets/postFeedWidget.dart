import 'package:flutter/material.dart';

import '../UI/postFeed.dart';
import '../models/post.dart';

class PostFeedWidget extends StatelessWidget {
  final List<Post> posts;

  PostFeedWidget(this.posts);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.only(bottom: 15.0, left: 10.0, right: 10.0),
      physics: AlwaysScrollableScrollPhysics(),
      children: postFeed(posts),
    );
  }
}
