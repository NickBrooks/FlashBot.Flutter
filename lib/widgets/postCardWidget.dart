import 'package:flutter/material.dart';

import '../models/post.dart';
import '../pages/postPage.dart';
import '../tools/utilities.dart';
import 'tagsRowWidget.dart';

class PostCardWidget extends StatelessWidget {
  final Post post;

  PostCardWidget(this.post);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new PostPage(post.id)),
              );
            },
            child: new Card(
                child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                post.imageUrl != ""
                    ? new Container(
                        height: 200.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new NetworkImage(post.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ))
                    : new Container(),
                new Container(
                    padding:
                        EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                    child: new Text(post.title,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0))),
                new ListTile(
                  title: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.green[300],
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(2.0))),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
                      margin: EdgeInsets.only(top: 3.0),
                      child: new Text(
                        post.trackName,
                        style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                        overflow: TextOverflow.ellipsis,
                      )),
                  subtitle: new Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: new Text(
                          Utils.getHumanFriendlyDate(post.dateCreated),
                          style: new TextStyle(color: Colors.grey[500]))),
                  trailing: new Icon(
                    Icons.star_border,
                    size: 30.0,
                    color: Colors.amber[400],
                  ),
                ),
                new Container(
                    padding: EdgeInsets.only(
                        top: 0.0, right: 15.0, left: 15.0, bottom: 15.0),
                    child: new Text(
                      post.summary,
                      style:
                          new TextStyle(color: Colors.grey[900], height: 1.2),
                    )),
                new Container(
                    padding: EdgeInsets.only(
                        top: 0.0, right: 15.0, left: 15.0, bottom: 15.0),
                    child: new TagsRowWidget(post.tags, 3))
              ],
            ))));
  }
}
