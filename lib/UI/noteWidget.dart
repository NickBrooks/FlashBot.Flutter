import 'package:flutter/material.dart';

import '../models/note.dart';

class NoteWidget extends StatelessWidget {
  final Note note;

  NoteWidget(this.note);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new ListTile(
            leading: new Icon(
              Icons.store_mall_directory,
              size: 30.0,
            ),
            title: new Text(note.title),
            subtitle: new Text(note.note),
          ),
          new ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(
                  child: new Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                new FlatButton(
                  child: new Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
