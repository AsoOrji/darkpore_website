import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton.extended(
        elevation: 4.0,
        icon: const Icon(Icons.chat),
        label: const Text('Drop a message for us'),
        backgroundColor: Colors.grey[700],
        onPressed: () {},
      ),
    );
  }
}
