import 'package:meta/meta.dart';

import '../tools/utilities.dart';

@immutable
class Post {
  final String id;
  final String trackId;
  final String trackName;
  final DateTime dateCreated;
  final List<String> tags;
  final String title;
  final String summary;
  final String body;
  final String imageUrl;

  Post(
      {String id,
      String trackId,
      String trackName,
      DateTime dateCreated,
      List<String> tags,
      String title,
      String summary,
      String body,
      String imageUrl})
      : this.body = body ?? '',
        this.title = title ?? '',
        this.trackId = trackId ?? '',
        this.trackName = trackName ?? '',
        this.dateCreated = dateCreated ?? new DateTime.now(),
        this.tags = tags ?? [],
        this.summary = summary ?? '',
        this.imageUrl = imageUrl ?? '',
        this.id = id ?? new Utils().generateV4();
}
