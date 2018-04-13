import 'package:flutter/material.dart';

import '../models/request.dart';

class RequestCardWidget extends StatelessWidget {
  final Request request;

  RequestCardWidget(this.request);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new ListTile(
            leading: new Icon(
              Icons.store_mall_directory,
              size: 30.0,
            ),
            title: new Text(request.title),
            subtitle: new Text(request.summary),
          ),
          new ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(
                  child: new Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                new FlatButton(
                  child: new Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
