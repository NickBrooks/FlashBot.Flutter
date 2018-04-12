import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(new AbstrackApp());
}

class AbstrackApp extends StatelessWidget {
  final store =
      new Store<AppState>(appReducer, initialState: new AppState.initial());

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
          theme: new ThemeData.light(),
          routes: <String, WidgetBuilder>{
            AbstrackRoutes.home: (context) => new Home(title: "Abstrack")
          }),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Material(
            child: new ListView(
          children: <Widget>[
            new Container(
                padding: new EdgeInsets.all(15.0),
                decoration: new BoxDecoration(color: Colors.white, boxShadow: [
                  new BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0,
                  ),
                ]),
                child: new Text("This is the title",
                    style: new TextStyle(fontSize: 40.0))),
            new Padding(
                padding: new EdgeInsets.all(15.0), child: new Text("Hey"))
          ],
        )));
  }
}

class AbstrackRoutes {
  static final home = "/";
  static final addNote = "/addNote";
}

class AppState {
  final int counter;
  final List<Note> notes;

  AppState({this.counter = 0, this.notes = const []});

  factory AppState.initial() => new AppState(counter: 0, notes: [
        new Note(
            id: Uuid().generateV4(),
            title: "Nick's thingo",
            note: "This is Nick's first note")
      ]);
}

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

AppState appReducer(AppState state, action) {
  return new AppState(
      counter: counterReducer(state.counter, action),
      notes: notesReducer(state.notes, action));
}

final counterReducer = combineReducers<int>([
  new TypedReducer<int, IncreaseCounterAction>(_increaseCounter),
  new TypedReducer<int, DecreaseCounterAction>(_decreaseCounter)
]);

final notesReducer = combineReducers<List<Note>>([
  new TypedReducer<List<Note>, AddNoteAction>(_addNote),
  new TypedReducer<List<Note>, NotesLoadedAction>(_setLoadedNotes),
  new TypedReducer<List<Note>, NotesNotLoadedAction>(_setNoNotes),
]);

int _increaseCounter(int count, IncreaseCounterAction action) {
  return count++;
}

int _decreaseCounter(int count, DecreaseCounterAction action) {
  return count--;
}

List<Note> _addNote(List<Note> notes, AddNoteAction action) {
  return new List.from(notes)..add(action.note);
}

List<Note> _setLoadedNotes(List<Note> notes, NotesLoadedAction action) {
  return action.notes;
}

List<Note> _setNoNotes(List<Note> notes, NotesNotLoadedAction action) {
  return [];
}

class IncreaseCounterAction {}

class DecreaseCounterAction {}

class AddNoteAction {
  final Note note;

  AddNoteAction(this.note);
}

class NotesLoadedAction {
  final List<Note> notes;

  NotesLoadedAction(this.notes);
}

class NotesNotLoadedAction {}

class Uuid {
  final Random _random = new Random();

  /// Generate a version 4 (random) uuid. This is a uuid scheme that only uses
  /// random numbers as the source of the generated uuid.
  String generateV4() {
    // Generate xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx / 8-4-4-4-12.
    final int special = 8 + _random.nextInt(4);

    return '${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}-'
        '${_bitsDigits(16, 4)}-'
        '4${_bitsDigits(12, 3)}-'
        '${_printDigits(special, 1)}${_bitsDigits(12, 3)}-'
        '${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}';
  }

  String _bitsDigits(int bitCount, int digitCount) =>
      _printDigits(_generateBits(bitCount), digitCount);

  int _generateBits(int bitCount) => _random.nextInt(1 << bitCount);

  String _printDigits(int value, int count) =>
      value.toRadixString(16).padLeft(count, '0');
}
