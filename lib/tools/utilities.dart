import 'dart:math';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  final Random _random = new Random();

  /// Generate a version 4 (random) uuid. This is a uuid scheme that only uses
  /// random numbers as the source of the generated uuid.
  String generateV4() {
    // Generate xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx / 8-4-4-4-12.
    final int special = 8 + _random.nextInt(4);

    return '${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}-'
        '${_bitsDigits(16, 4)}-'
        '4${_bitsDigits(12, 3)}-'
        '${_printDigits(special, 1)}${_bitsDigits(12, 3)}-'
        '${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}${_bitsDigits(16, 4)}';
  }

  String _bitsDigits(int bitCount, int digitCount) =>
      _printDigits(_generateBits(bitCount), digitCount);

  int _generateBits(int bitCount) => _random.nextInt(1 << bitCount);

  String _printDigits(int value, int count) =>
      value.toRadixString(16).padLeft(count, '0');

  static void launchURL(String url) async {
    if (await canLaunch(url)) {
      print(url);
      await launch(url, forceWebView: true, forceSafariVC: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  static String getHumanFriendlyDate(DateTime dateTime) {
    var difference = new DateTime.now().difference(dateTime);

    if (difference.inMinutes < 1) {
      return "Now";
    } else if (difference.inHours < 1) {
      return difference.inMinutes.toString() + " mins";
    } else if (difference.inHours < 24) {
      return difference.inHours.toString() + " hrs";
    } else if (difference.inHours < 48) {
      return difference.inDays.toString() + " day";
    } else if (difference.inHours < 72) {
      return difference.inDays.toString() + " days";
    } else if (difference.inDays < 365) {
      return new DateFormat("d MMM h:m a").format(dateTime.toLocal());
    } else {
      return "${dateTime.day.toString()} ${dateTime.month.toString()} ${dateTime.year.toString()}";
    }
  }
}
