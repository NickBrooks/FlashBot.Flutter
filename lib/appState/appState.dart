import '../models/request.dart';
import '../tools/utilities.dart';

class AppState {
  final int counter;
  final List<Request> requests;

  AppState({this.counter = 0, this.requests = const []});

  factory AppState.initial() => new AppState(counter: 0, requests: [
        new Request(
            id: Uuid().generateV4(),
            title: "Nick's thingo",
            summary:
                "This is Nick's first request and the second request and the third request and the fourth request and the fifth request yes yes yes yes yes.",
            body: "Hey this is the body",
            dateCreated: DateTime.parse("2018-04-09T05:17:41Z"),
            tags: ["test", "fogarty", "chinese", "chicken"],
            trackId: "a2a9ca52-09c5-4694-ac0f-df6ae1372a47"),
        new Request(
            id: Uuid().generateV4(),
            title: "Darcy Fogarty",
            summary: "Darcy Fogarty can kick goals",
            body: "What do we know about that???",
            dateCreated: DateTime.parse("2018-04-09T05:17:41Z"),
            tags: ["test", "fogarty", "chinese", "chicken"],
            trackId: "a2a9ca52-09c5-4694-ac0f-df6ae1372a47"),
      ]);
}
