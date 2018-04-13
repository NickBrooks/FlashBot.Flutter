import '../models/note.dart';
import '../tools/utilities.dart';

class AppState {
  final int counter;
  final List<Note> notes;

  AppState({this.counter = 0, this.notes = const []});

  factory AppState.initial() => new AppState(counter: 0, notes: [
        new Note(
            id: Uuid().generateV4(),
            title: "Nick's thingo",
            note: "This is Nick's first note"),
        new Note(
            id: Uuid().generateV4(),
            title: "Fogarty magic",
            note: "This is Darcy Fogarty")
      ]);
}
