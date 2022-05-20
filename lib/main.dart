import 'package:flutter/material.dart';
import 'package:navigation_bar/sections/navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DMA',
      home: Nav_Bar(),
    );
  }
}
