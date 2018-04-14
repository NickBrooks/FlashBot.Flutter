import 'package:flutter/material.dart';

import '../models/request.dart';
import '../pages/request.dart';

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
                      child: request.imageUrl != null
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
                        child: new Text('24 mins',
                            style: new TextStyle(color: Colors.grey[500]))),
                    trailing: new Icon(
                      Icons.star,
                      size: 30.0,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  new Padding(
                      padding: EdgeInsets.only(
                          top: 0.0, right: 15.0, left: 15.0, bottom: 15.0),
                      child: new Text(
                        request.summary,
                        style: new TextStyle(color: Colors.grey[900]),
                      ))
                ],
              ),
            )));
  }
}
