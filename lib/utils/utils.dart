import 'package:url_launcher/url_launcher.dart';

class Utils {
  static void launchURL(String url) async {
    if (await canLaunch(url)) {
      print(url);
      await launch(url, forceWebView: true, forceSafariVC: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}
