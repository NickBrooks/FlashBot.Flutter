import 'package:flutter/material.dart';

import '../UI/requestFeed.dart';
import '../models/request.dart';

class RequestFeedWidget extends StatelessWidget {
  final List<Request> requests;

  RequestFeedWidget(this.requests);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.only(bottom: 15.0, left: 10.0, right: 10.0),
      physics: AlwaysScrollableScrollPhysics(),
      children: requestFeed(requests),
    );
  }
}
