import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({Key? key}) : super(key: key);
  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: 4.0,
      icon: const Icon(Icons.email),
      label: const Text('Email us'),
      backgroundColor: Colors.black,
      onPressed: () {
        launchURL('mailto:info@darkpore.com');
      },
    );
  }
}
