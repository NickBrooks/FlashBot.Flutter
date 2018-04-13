import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'appState/appState.dart';
import 'pages/home.dart';
import 'reducers/requestsReducer.dart';

void main() {
  runApp(new AbstrackApp());
}

class AbstrackRoutes {
  static final home = "/";
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
          theme: new ThemeData(fontFamily: 'ibm-sans'),
          routes: <String, WidgetBuilder>{
            AbstrackRoutes.home: (context) => new Home(title: "ABSTRACK")
          }),
    );
  }
}

AppState appReducer(AppState state, action) {
  return new AppState(requests: requestsReducer(state.requests, action));
}
