import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../appState/appState.dart';
import '../tools/labels.dart';
import '../widgets/postFeedWidget.dart';

class TabbedHome extends StatefulWidget {
  TabbedHome({Key key}) : super(key: key);

  @override
  _TabbedHomeState createState() => new _TabbedHomeState();
}

class _TabbedHomeState extends State<TabbedHome> {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return _authenticateUser(state);
        });
  }
}

Widget _authenticateUser(AppState state) {
  if (state.authToken.refreshToken == "") {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text('Launch new screen'),
          onPressed: () {
            // Navigate to second screen when tapped!
          },
        ),
      ),
    );
  }

  return new DefaultTabController(
      length: 4,
      child: new Scaffold(
        body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                title: new Text(Labels().appTitle,
                    style: new TextStyle(
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.bold)),
                forceElevated: innerBoxIsScrolled,
                pinned: true,
                floating: true,
                centerTitle: true,
                bottom: new TabBar(
                  labelColor: Colors.green[100],
                  unselectedLabelColor: Colors.blueGrey[800],
                  indicatorColor: Colors.green[100],
                  tabs: [
                    new Tab(icon: new Icon(Icons.flash_on)),
                    new Tab(icon: new Icon(Icons.more)),
                    new Tab(icon: new Icon(Icons.star)),
                    new Tab(icon: new Icon(Icons.account_circle)),
                  ],
                ),
              ),
            ];
          },
          body: new TabBarView(
            children: [
              new PostFeedWidget(state.feed),
              new Icon(Icons.more),
              new Icon(Icons.star),
              new Icon(Icons.account_circle),
            ],
          ),
        ),
      ));
}
