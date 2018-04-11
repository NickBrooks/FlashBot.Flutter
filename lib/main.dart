import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import './utils/utils.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Abstrack',
      theme:
          new ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'ibm-sans'),
      home: new Home(title: 'Abstrack'),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;
  final String _markdownData =
      """Markdown allows you to easily include formatted text, images, and even formatted Dart code in your app.
## Styling
Style text as _italic_, __bold__, or `inline code`.
- Use bulleted lists
- To better clarify
- Your points
## Links
You can use [hyperlinks](http://abstrack.co/) in markdown
## Images
You can include images:\n
![img](https://i.imgur.com/nmvyAAU.jpg)
## Markdown widget
This is an example of how to create your own Markdown widget:
    new Markdown(data: 'Hello _world_!');
## Code blocks
Formatted Dart code looks really pretty too:
```
void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      body: new Markdown(data: markdownData)
    )
  ));
}
```
Enjoy!
""";

  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Material(
            child: new ListView(
              children: <Widget>[
                new Container(
                    padding: new EdgeInsets.all(15.0),
                    decoration:
                        new BoxDecoration(color: Colors.white, boxShadow: [
                      new BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                      ),
                    ]),
                    child: new Text("This is the title",
                        style: new TextStyle(fontSize: 40.0))),
                new Padding(
                    padding: new EdgeInsets.all(15.0),
                    child: new MarkdownBody(
                        data: widget._markdownData, onTapLink: Utils.launchURL))
              ],
            )));
  }
}
