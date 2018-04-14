import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../appState/appState.dart';
import '../models/request.dart';
import '../UI/requestFeed.dart';

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
          actions: <Widget>[
            new IconButton(
              // action button
              icon: new Icon(Icons.snooze),
              onPressed: () {},
            ),
            new IconButton(
              // action button
              icon: new Icon(Icons.headset),
              onPressed: () {},
            )
          ],
        ),
        body: new Material(
            child: new StoreConnector<AppState, List<Request>>(
          converter: (store) => store.state.requests,
          builder: (context, requests) {
            return new ListView(
              padding: EdgeInsets.only(bottom: 15.0, left: 10.0, right: 10.0),
              physics: AlwaysScrollableScrollPhysics(),
              children: requestFeed(requests),
            );
          },
        )));
  }
}
