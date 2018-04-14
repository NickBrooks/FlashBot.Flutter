import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'appState/appState.dart';
import 'pages/home.dart';
import 'pages/request.dart';
import 'reducers/requestsReducer.dart';

void main() {
  runApp(new AbstrackApp());
}

class AbstrackRoutes {
  static final feed = "/";
  static final request = "/request";
}

class AbstrackApp extends StatelessWidget {
  final store =
      new Store<AppState>(appReducer, initialState: new AppState.initial());

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
          theme: new ThemeData(
              fontFamily: 'ibm-sans',
              primaryColor: Colors.blue[700],
              accentColor: Colors.grey[900]),
          routes: <String, WidgetBuilder>{
            AbstrackRoutes.feed: (context) => new Home(title: "ABSTRACK")
          }),
    );
  }
}

AppState appReducer(AppState state, action) {
  return new AppState(requests: requestsReducer(state.requests, action));
}
