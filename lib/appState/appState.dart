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
            summary: "This is Nick's first request"),
        new Request(
            id: Uuid().generateV4(),
            title: "Fogarty magic",
            summary: "This is Darcy Fogarty")
      ]);
}
