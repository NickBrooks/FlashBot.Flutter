import 'package:meta/meta.dart';

import '../tools/utilities.dart';

@immutable
class Request {
  final String id;
  final String trackId;
  final DateTime dateCreated;
  final List<String> tags;
  final String title;
  final String summary;
  final String body;

  Request(
      {String id,
      String trackId,
      DateTime dateCreated,
      List<String> tags,
      String title,
      String summary,
      String body})
      : this.body = body ?? '',
        this.title = title ?? '',
        this.trackId = trackId ?? '',
        this.dateCreated = dateCreated ?? new DateTime.now(),
        this.tags = tags ?? [],
        this.summary = summary ?? '',
        this.id = id ?? new Uuid().generateV4();
}
