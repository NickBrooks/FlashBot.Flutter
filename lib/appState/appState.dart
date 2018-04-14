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
            body:
                """HE COMMONWEALTH Games will finish on Sunday night and the sports fans of south-east Queensland will turn their attention to back to football, and to Brisbane and the same old story will appear to be unfolding.

The AFL season will be a month old and the Lions are yet to win a game. The same as 2011, 2014 and 2015. In 2016 and 2017 they’d won a game by now, but then, like now, they’re propping up the ladder.

The headlines won't read well. Brisbane’s 2.5 score line in the 93-point loss to Richmond at the MCG on Saturday was their lowest score ever as the Brisbane Lions and equal to the record lowest of their predecessors, the Brisbane Bears. Their percentage tumbled from 81.5 to 64.0.

**TIGERS TAME LIONS:** Full match coverage and stats

The rusted-on Lions fan knows that the Lions are on a journey and that the rebuild is going to be slow, laborious and for every two steps taken forward, there will be significant steps back. But the casual Brisbane sports fan is going to look at the AFL ladder on Monday morning and see that the Lions are stone, motherless last. Again.

The Lions still have 10 home games to come, starting with a QClash against Gold Coast next Sunday. Will the fans turn up? What will they see if they do?

"I’m disappointed for our fans," Lions coach Chris Fagan said. "But I think we’re really clear about where we are and what we’re doing, and they were really positive about where the team has been going over the first three weeks.

"I’m not sure they’re that fickle," he continued. "What they need to do is judge us over a period of time and they’ve been pretty good at doing that.

"They’ll be critical but it’s hard to improve quickly in this game. I understand the questions but go study the teams that have tried to rebuild and see how long it takes. It takes a while," he said, noting that when Tigers coach Damien Hardwick started out in 2010, he embarked on the same journey that Fagan is now.

WATCH: Chris Fagan's full post-match media conference

"We want to win consistently as soon as we can, but we also understand it’s a process that takes a bit of time," Fagan said.

Fagan wasn't fishing for excuses. The Lions are developing, but there are still expectations around performance and his animated conversations with his team at both quarter and three-quarter time on Saturday suggested that much of what was dished up against the Tigers was below par.

"When you play Richmond, you have to win contested possessions or at least square that up and you have to be good in the tackle. That’s base one and if you can’t do that then it’s pretty hard to beat them. They were much better than us in the first half and at times, it showed," he said.

Fagan did stress the positives.""",
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
