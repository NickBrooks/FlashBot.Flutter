import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../appState/appState.dart';
import '../models/request.dart';
import '../widgets/requestFeedWidget.dart';

class TabbedHome extends StatefulWidget {
  TabbedHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TabbedHomeState createState() => new _TabbedHomeState();
}

class _TabbedHomeState extends State<TabbedHome> {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, List<Request>>(
        converter: (store) => store.state.requests,
        builder: (context, requests) {
          return new DefaultTabController(
              length: 4,
              child: new Scaffold(
                appBar: new AppBar(
                  bottom: new TabBar(
                    indicatorColor: Colors.blue[300],
                    tabs: [
                      new Tab(icon: new Icon(Icons.format_line_spacing)),
                      new Tab(icon: new Icon(Icons.directions_transit)),
                      new Tab(icon: new Icon(Icons.star)),
                      new Tab(icon: new Icon(Icons.account_circle)),
                    ],
                  ),
                  title: new Text(widget.title),
                ),
                body: new TabBarView(
                  children: [
                    new RequestFeedWidget(requests),
                    new Icon(Icons.directions_transit),
                    new Icon(Icons.star),
                    new Icon(Icons.account_circle),
                  ],
                ),
              ));
        });
  }
}
