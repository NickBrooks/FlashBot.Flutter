import '../models/request.dart';
import '../widgets/requestCardWidget.dart';

List<RequestCardWidget> requestFeed(List<Request> requests) {
  // sort by date
  requests.sort((a, b) => b.dateCreated.millisecondsSinceEpoch
      .compareTo(a.dateCreated.millisecondsSinceEpoch));

  return requests.map((request) => new RequestCardWidget(request)).toList();
}
