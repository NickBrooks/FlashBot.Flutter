import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../models/request.dart';
import '../tools/utilities.dart';
import '../widgets/tagsRowWidget.dart';

class RequestPage extends StatefulWidget {
  RequestPage(this.request, {Key key}) : super(key: key);

  final Request request;

  @override
  _RequestPageState createState() => new _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.request.trackName),
          actions: <Widget>[
            new IconButton(
              // action button
              icon: new Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        body: new Material(
            color: Colors.white,
            child: new ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: <Widget>[
                widget.request.imageUrl != ""
                    ? new Container(
                        height: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new NetworkImage(widget.request.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ))
                    : new Container(),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: new Column(children: <Widget>[
                      new Text(
                        widget.request.title,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                      new Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: new TagsRowWidget(widget.request.tags))
                    ])),
                new Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: new MarkdownBody(
                        data: widget.request.body, onTapLink: Utils.launchURL))
              ],
            )));
  }
}
