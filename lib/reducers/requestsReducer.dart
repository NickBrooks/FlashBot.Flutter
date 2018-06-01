import 'package:redux/redux.dart';

import '../actions/requestActions.dart';
import '../models/request.dart';

final requestsReducer = combineReducers<List<Request>>([
  new TypedReducer<List<Request>, AddRequestAction>(_addRequest),
  new TypedReducer<List<Request>, RequestsLoadedAction>(_setLoadedRequests),
  new TypedReducer<List<Request>, RequestsNotLoadedAction>(_setNoRequests),
]);

List<Request> _addRequest(List<Request> requests, AddRequestAction action) {
  return new List.from(requests)..add(action.request);
}

List<Request> _setLoadedRequests(List<Request> requests, RequestsLoadedAction action) {
  return action.requests;
}

List<Request> _setNoRequests(List<Request> requests, RequestsNotLoadedAction action) {
  return [];
}
