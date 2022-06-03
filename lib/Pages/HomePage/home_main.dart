import 'package:flutter/material.dart';
import 'package:navigation_bar/Pages/HomePage/home1.dart';
import 'package:navigation_bar/Pages/HomePage/home2.dart';
import 'package:navigation_bar/Pages/HomePage/home3.dart';
import 'package:navigation_bar/Pages/HomePage/home4.dart';
import 'package:navigation_bar/sections/footer.dart';
import 'package:navigation_bar/sections/header.dart';
import 'package:navigation_bar/sections/float_button.dart';

// ignore: camel_case_types
class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Header(),
        Home1(),
        Home2(),
        Home3(),
        Home4(),
        Footer(),
      ]),
      floatingActionButton: FloatButton(),
    );
  }
}
