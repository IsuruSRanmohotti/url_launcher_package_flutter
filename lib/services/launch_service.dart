import 'package:url_launcher/url_launcher.dart';
//flutter pub add url_launcher

class LaunchService {
  static Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future<void> openUrlInApp(
      {String url =
          "https://fontawesome.com/icons/image?f=sharp&s=regular&an=bounce"}) async {
    Uri uri = Uri.parse(url);
    final Uri launchUri = Uri(
        scheme: uri.scheme,
        host: uri.host,
        path: uri.path,
        fragment: uri.fragment);
    await launchUrl(launchUri);
  }
}
