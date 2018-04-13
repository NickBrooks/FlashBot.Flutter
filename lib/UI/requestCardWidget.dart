import 'package:flutter/material.dart';

import '../models/request.dart';
import '../pages/request.dart';

class RequestCardWidget extends StatelessWidget {
  final Request request;

  RequestCardWidget(this.request);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: EdgeInsets.only(top: 5.0),
        child: new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.network(
                'http://nnimgt-a.akamaihd.net/transform/v1/crop/frm/VXPt7xsp7g5SUQ49KQuzPr/4711a464-2174-4a8d-9460-9695632abbaa.jpg/r0_182_5022_3271_w1200_h678_fmax.jpg',
              ),
              new ListTile(
                title: new Text(request.title),
                subtitle: new Text(request.summary.length > 80
                    ? request.summary.substring(0, 80) + '...'
                    : request.summary),
                trailing: new Icon(
                  Icons.star,
                  size: 30.0,
                  color: Colors.orangeAccent,
                ),
              ),
              new ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: new ButtonBar(
                  children: <Widget>[
                    new FlatButton(
                      child: new Text('VIEW'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new RequestPage(request)),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
