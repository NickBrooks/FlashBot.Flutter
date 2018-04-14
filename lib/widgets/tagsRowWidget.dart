import 'package:flutter/material.dart';

class TagsRowWidget extends StatelessWidget {
  final List<String> tags;
  final int count;

  TagsRowWidget(this.tags, [this.count = 12]);

  @override
  Widget build(BuildContext context) {
    var tagsList = new List<Container>();

    tags.take(count).forEach((t) => tagsList.add(new Container(
        decoration: new BoxDecoration(
            color: Colors.blue[400],
            borderRadius: new BorderRadius.all(new Radius.circular(2.0))),
        margin: EdgeInsets.only(right: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
        child: new Text(
          t,
          style:
              new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ))));

    if (tags.skip(count).length > 0) {
      tagsList.add(new Container(
          margin: EdgeInsets.only(right: 5.0),
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
          child: new Text(
            "+" + tags.skip(count).length.toString(),
            style: new TextStyle(color: Colors.grey),
          )));
    }

    return new Row(children: tagsList);
  }
}
