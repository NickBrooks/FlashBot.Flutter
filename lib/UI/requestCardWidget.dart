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
                  new Image.network(
                    'http://nnimgt-a.akamaihd.net/transform/v1/crop/frm/VXPt7xsp7g5SUQ49KQuzPr/4711a464-2174-4a8d-9460-9695632abbaa.jpg/r0_182_5022_3271_w1200_h678_fmax.jpg',
                  ),
                  new ListTile(
                    title: new Text(request.title,
                        overflow: TextOverflow.ellipsis,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                    subtitle: new Text('24 mins',
                        style: new TextStyle(color: Colors.grey[500])),
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
