import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../UI/requestCardWidget.dart';
import '../appState/appState.dart';
import '../models/request.dart';

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
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              children: _buildRequestList(requests),
            );
          },
        )));
  }

  List<RequestCardWidget> _buildRequestList(List<Request> requests) {
    return requests.map((request) => new RequestCardWidget(request)).toList();
  }
}
