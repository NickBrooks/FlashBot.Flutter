import '../models/request.dart';
import '../tools/utilities.dart';

class AppState {
  final int counter;
  final List<Request> requests;

  AppState({this.counter = 0, this.requests = const []});

  factory AppState.initial() => new AppState(counter: 0, requests: [
        new Request(
            id: Utils().generateV4(),
            title: "This is a super long title but obviously not long enough",
            summary:
                "Boom Boom yeh. This is Nick's first request and the second request and the third request and the fourth request and the fifth request yes yes yes yes yes.",
            body: """Just a test
# what do you think
*its good*""",
            dateCreated: DateTime.parse("2018-04-13T05:13:41Z"),
            tags: ["test", "fogarty", "chinese", "chicken"],
            trackId: "a2a9ca52-09c5-4694-ac0f-df6ae1372a47",
            trackName: "Jessie's track",
            imageUrl: "https://i.imgur.com/VjeIrRO.jpg"),
        new Request(
            id: Utils().generateV4(),
            title: "Darcy Fogarty",
            summary: "Darcy Fogarty can kick goals",
            body: "What do we know about that???",
            dateCreated: DateTime.parse("2018-04-09T05:19:41Z"),
            tags: [
              "test",
              "fogarty",
              "chinese",
              "chicken",
              "buffon",
              "ham",
              "cheese",
              "salad",
              "krispy"
            ],
            trackId: "a2a9ca52-09c5-4694-ac0f-df6ae1372a47",
            trackName: "Nick's track",
            imageUrl:
                "http://nnimgt-a.akamaihd.net/transform/v1/crop/frm/VXPt7xsp7g5SUQ49KQuzPr/4711a464-2174-4a8d-9460-9695632abbaa.jpg/r0_182_5022_3271_w1200_h678_fmax.jpg"),
        new Request(
            id: Utils().generateV4(),
            title: "This is just a text one",
            summary: "Testing out a text only card",
            body: "What does it look like?",
            dateCreated: DateTime.parse("2018-04-12T05:17:41Z"),
            tags: ["test", "fogarty", "chinese", "chicken"],
            trackId: "a2a9ca52-09c5-4694-ac0f-df6ae1372a47",
            trackName: "Nick's track",
            imageUrl: "")
      ]);
}
