import 'package:flutter/material.dart';
import 'package:Darkpore/Pages/About/about_main.dart';
import 'package:Darkpore/Pages/Careers/career_main.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.black),
            onPressed: () {},
            child: const Text('Darkpore © 2022'),
          ),
          // const Spacer(flex: 3),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutMain()));
            },
            child: const Text('About'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              launchURL('mailto:info@darkpore.com');
            },
            child: const Text('Contact'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CareerMain()));
            },
            child: const Text('Careers'),
          ),
        ],
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
