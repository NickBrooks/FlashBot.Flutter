import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../models/request.dart';
import '../tools/utilities.dart';

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
          children: <Widget>[
            new Image.network(
              'http://nnimgt-a.akamaihd.net/transform/v1/crop/frm/VXPt7xsp7g5SUQ49KQuzPr/4711a464-2174-4a8d-9460-9695632abbaa.jpg/r0_182_5022_3271_w1200_h678_fmax.jpg',
            ),
            new Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: new MarkdownBody(
                    data: widget.request.body, onTapLink: Utils.launchURL))
          ],
        )));
  }
}
