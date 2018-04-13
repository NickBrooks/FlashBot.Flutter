import '../models/note.dart';

class AddNoteAction {
  final Note note;

  AddNoteAction(this.note);
}

class NotesLoadedAction {
  final List<Note> notes;

  NotesLoadedAction(this.notes);
}

class NotesNotLoadedAction {}