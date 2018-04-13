import 'package:redux/redux.dart';

import '../actions/noteActions.dart';
import '../models/note.dart';

final notesReducer = combineReducers<List<Note>>([
  new TypedReducer<List<Note>, AddNoteAction>(_addNote),
  new TypedReducer<List<Note>, NotesLoadedAction>(_setLoadedNotes),
  new TypedReducer<List<Note>, NotesNotLoadedAction>(_setNoNotes),
]);

List<Note> _addNote(List<Note> notes, AddNoteAction action) {
  return new List.from(notes)..add(action.note);
}

List<Note> _setLoadedNotes(List<Note> notes, NotesLoadedAction action) {
  return action.notes;
}

List<Note> _setNoNotes(List<Note> notes, NotesNotLoadedAction action) {
  return [];
}
