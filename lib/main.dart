import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'appState/appState.dart';
import 'pages/tabbedHome.dart';
import 'reducers/postsReducer.dart';

void main() {
  runApp(new FlashBotApp());
}

class FlashBotRoutes {
  static final feed = "/";
  static final request = "/post";
}

class FlashBotApp extends StatelessWidget {
  final store =
      new Store<AppState>(appReducer, initialState: new AppState.initial());

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
          theme: new ThemeData(
              fontFamily: 'ibm-sans',
              primaryColor: Colors.green[300],
              accentColor: Colors.grey[900]),
          routes: <String, WidgetBuilder>{
            FlashBotRoutes.feed: (context) => new TabbedHome(title: "FLASHBOT")
          }),
    );
  }
}

AppState appReducer(AppState state, action) {
  return new AppState(posts: postsReducer(state.posts, action));
}
