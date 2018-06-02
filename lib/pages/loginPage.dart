import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import '../appState/appState.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return new WebviewScaffold(
            url: "https://flashbot.app",
          );
        });
  }
}
