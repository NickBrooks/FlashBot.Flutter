import '../models/request.dart';

class AddRequestAction {
  final Request request;

  AddRequestAction(this.request);
}

class RequestsLoadedAction {
  final List<Request> requests;

  RequestsLoadedAction(this.requests);
}

class RequestsNotLoadedAction {}