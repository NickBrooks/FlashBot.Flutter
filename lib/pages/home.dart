import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../UI/noteWidget.dart';
import '../appState/appState.dart';
import '../models/note.dart';

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
            child: new StoreConnector<AppState, List<Note>>(
          converter: (store) => store.state.notes,
          builder: (context, notes) {
            return new ListView(
              padding: EdgeInsets.all(15.0),
              children: _buildNoteList(notes),
            );
          },
        )));
  }

  List<NoteWidget> _buildNoteList(List<Note> notes) {
    return notes.map((note) => new NoteWidget(note)).toList();
  }
}
