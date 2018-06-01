import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../models/post.dart';
import '../tools/utilities.dart';
import '../widgets/tagsRowWidget.dart';

class PostPage extends StatefulWidget {
  PostPage(this.post, {Key key}) : super(key: key);

  final Post post;

  @override
  _PostPageState createState() => new _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.post.trackName),
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
                widget.post.imageUrl != ""
                    ? new Container(
                        height: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new NetworkImage(widget.post.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ))
                    : new Container(),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: new Column(children: <Widget>[
                      new Text(
                        widget.post.title,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                      new Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: new TagsRowWidget(widget.post.tags))
                    ])),
                new Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: new MarkdownBody(
                        data: widget.post.body, onTapLink: Utils.launchURL))
              ],
            )));
  }
}
