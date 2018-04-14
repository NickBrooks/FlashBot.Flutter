import 'package:flutter/material.dart';

import '../models/request.dart';
import '../pages/request.dart';
import '../tools/utilities.dart';
import 'tagsRow.dart';

class RequestCardWidget extends StatelessWidget {
  final Request request;

  RequestCardWidget(this.request);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new RequestPage(request)),
              );
            },
            child: new Card(
                child: new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                    child: request.imageUrl != ""
                        ? new Container(
                            height: 200.0,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new NetworkImage(request.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ))
                        : new Container()),
                new Container(
                    decoration: new BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(2.0))),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 10.0),
                    child: new Text(
                      request.trackName,
                      style: new TextStyle(
                          color: Colors.greenAccent[700],
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    )),
                new ListTile(
                  title: new Text(request.title,
                      overflow: TextOverflow.ellipsis,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  subtitle: new Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: new Text(
                          Utils.getHumanFriendlyDate(request.dateCreated),
                          style: new TextStyle(color: Colors.grey[500]))),
                  trailing: new Icon(
                    Icons.star,
                    size: 30.0,
                    color: Colors.orangeAccent,
                  ),
                ),
                new Container(
                    padding: EdgeInsets.only(
                        top: 0.0, right: 15.0, left: 15.0, bottom: 15.0),
                    child: new Text(
                      request.summary,
                      style:
                          new TextStyle(color: Colors.grey[900], height: 1.2),
                    )),
                new Container(
                    padding: EdgeInsets.only(
                        top: 0.0, right: 15.0, left: 15.0, bottom: 15.0),
                    child: new TagsRowWidget(request.tags, 3))
              ],
            ))));
  }
}
