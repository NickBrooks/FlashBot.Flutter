import 'package:flutter/material.dart';

import '../models/request.dart';
import '../pages/request.dart';
import '../tools/utilities.dart';

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
                children: <Widget>[
                  new Container(
                      child: request.imageUrl != ""
                          ? new Image.network(
                              request.imageUrl,
                            )
                          : new Container()),
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
                      child: new Row(children: _renderTags()))
                ],
              ),
            )));
  }

  List<Container> _renderTags() {
    var tagsList = new List<Container>();

    request.tags.forEach((t) => tagsList.add(new Container(
        margin: EdgeInsets.only(right: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
        color: Colors.blue[400],
        child: new Text(
          t,
          style:
              new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ))));

    return tagsList;
  }
}
