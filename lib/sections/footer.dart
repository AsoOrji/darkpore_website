import 'package:flutter/material.dart';

class Foot extends StatelessWidget {
  const Foot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.grey[700],
            ),
            onPressed: () {},
            child: const Text('Darkpore © 2022'),
          ),
          // const Spacer(flex: 3),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.grey[700],
            ),
            onPressed: () {},
            child: const Text('Privacy & Legal'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.grey[700],
            ),
            onPressed: () {},
            child: const Text('Contact'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.grey[700],
            ),
            onPressed: () {},
            child: const Text('Careers'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.grey[700],
            ),
            onPressed: () {},
            child: const Text('News'),
          ),
        ],
      ),
    );
  }
}
