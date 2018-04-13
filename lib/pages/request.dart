import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../appState/appState.dart';
import '../models/request.dart';
import '../tools/utilities.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key key, this.request}) : super(key: key);

  final Request request;

  @override
  _RequestPageState createState() => new _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.request.title),
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
            child: new ListView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: <Widget>[
            new MarkdownBody(
                data: widget.request.body, onTapLink: Utils.launchURL)
          ],
        )));
  }
}
