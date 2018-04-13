import 'package:meta/meta.dart';

import '../tools/utilities.dart';

@immutable
class Note {
  final String id;
  final String title;
  final String note;

  Note({String id, String title, String note})
      : this.note = note ?? '',
        this.title = title ?? '',
        this.id = id ?? new Uuid().generateV4();
}